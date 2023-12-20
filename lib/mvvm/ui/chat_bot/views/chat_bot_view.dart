import 'package:drag_ball/drag_ball.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/chat_bot_data.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/input_widget.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/message_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';

enum ChatActions { regenerate, clear, share, changeChatPt }

extension ChatActionsExt on ChatActions {
  String get toDisplayText => switch (this) {
        ChatActions.clear => "Clear conversation",
        ChatActions.regenerate => "Regenerate response",
        ChatActions.changeChatPt => "Change chat pt",
        _ => "Share"
      };
}

class ChatBotView extends ConsumerStatefulWidget {
  const ChatBotView({super.key});

  @override
  ConsumerState<ChatBotView> createState() => _ChatBotViewState();
}

class _ChatBotViewState extends ConsumerState<ChatBotView> {
  ChatBotViewModel get _vm => ref.read(chatBotStateNotifier.notifier);

  ChatBotData get _data => ref.watch(chatBotStateNotifier).data;

  ChatBotState get _state => ref.watch(chatBotStateNotifier);

  Color get _primaryColor => Theme.of(context).primaryColor;

  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      _vm.initialTextToSpeech();
      _vm.initialSpeechToText().whenComplete(() => _vm.getMessage());
    });
    super.initState();
  }

  void _listenStateChange(ChatBotState state) {
    state.maybeWhen(
      loadingMessage: (_) => _textController.clear(),
      sendMessageFailed: (_, error) =>
          context.showSnackBar("🐛[Send message] $error"),
      clearConversationFailed: (_, error) =>
          context.showSnackBar("🐛[Clear conversation] $error"),
      deleteMessageFailed: (_, error) =>
          context.showSnackBar("🐛[Delete message] $error"),
      listeningSpeech: (_, responseText) => _textController.text = responseText,
      orElse: () {},
    );
  }

  void _onClearConversation() async {
    final dialog = await context.showAlertDialog(
        header: "Clear conversation",
        content: "Are you sure clear this conversation?");
    if (dialog) {
      _vm.clearConservation();
    }
  }

  void _onSpeechTap({required String messageId, required String content}) {
    final previousMessageId = _data.messageSpeechId;
    _state.maybeWhen(
      speechText: (_) => _vm.cancelSpeech(
          previousMessageId: previousMessageId,
          messageId: messageId,
          eventCall: () {
            _vm.startSpeechText(content: content, messageId: messageId);
          }),
      orElse: () => _vm.startSpeechText(content: content, messageId: messageId),
    );
  }

  void _longPressMessage({required int messageId}) async {
    final dialog = await context.showAlertDialog(
        header: "Delete this message",
        content: "Are you sure delete this message?");
    if (dialog) {
      _vm.deleteMessage(messageId: messageId.toString());
    }
  }

  void _changeChatPt() async {
    final show = await context.selectChatPt();
  }

  @override
  void deactivate() {
    _vm.removeAllEventHandler();
    super.deactivate();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(chatBotStateNotifier, (_, next) => _listenStateChange(next));

    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Dragball(
        ball: _supportBall(context),
        iconSize: 15.0,
        onTap: () {},
        initialPosition: const DragballPosition.defaultPosition(),
        onPositionChanged: (_) {},
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            if (ImageConst.chatBackgroundImg.isNotEmpty)
              Positioned.fill(
                child: ImageCustom(
                  fit: BoxFit.cover,
                  isNetworkImage: false,
                  color: _primaryColor.withOpacity(0.1),
                  imageUrl: ImageConst.chatBackgroundImg,
                ),
              ),
            Positioned.fill(
              child: Container(color: _primaryColor.withOpacity(0.1)),
            ),
            _body(context),
            if (_state.loading) _loadingField(context)
          ],
        ),
      ),
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Chat bot',
              style: context.titleLarge
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ],
        ),
        actions: [
          PopupMenuButton<ChatActions>(
            icon: const Icon(Icons.more_vert_rounded),
            onSelected: (ChatActions item) {
              switch (item) {
                case ChatActions.clear:
                  _onClearConversation();
                case ChatActions.changeChatPt:
                  _changeChatPt();
                case ChatActions.regenerate:
                  _vm.reSendMessage();

                default:
                  () {};
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<ChatActions>>[
              ...[
                ChatActions.regenerate,
                ChatActions.share,
                ChatActions.clear,
                ChatActions.changeChatPt
              ].map(
                (e) => PopupMenuItem<ChatActions>(
                  value: e,
                  child: Text(e.toDisplayText, style: context.titleMedium),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _data.messages.length + 1,
              itemBuilder: (_, index) {
                if (index == _data.messages.length) {
                  return _botInformationView(context);
                }
                final message = _data.messages[index];
                return MessageItem(
                  isBot: message.type.isSystem || message.type.isAssistant,
                  content: message.content,
                  time: message.createdAt,
                  loading: message.status.isLoading,
                  isErrorMessage: message.status.isError,
                  speechOnPress: () => _onSpeechTap(
                    messageId: message.id.toString(),
                    content: message.content,
                  ),
                  isSpeechText: _state.maybeWhen(
                    orElse: () => false,
                    speechText: (data) =>
                        data.messageSpeechId == message.id.toString(),
                  ),
                  longPressText: () => _longPressMessage(messageId: message.id),
                );
              },
            ),
          ),
          InputWidget(
            textEditingController: _textController,
            isListening: _state.listeningSpeech,
            onVoiceStart: () => _vm.startListeningSpeech(),
            onVoiceStop: () => _vm.stopListeningSpeech(),
            micAvailable: _data.micAvailable,
            onSubmitted: () => _vm.sendMessage(content: _textController.text),
          ),
        ],
      ),
    );
  }

  Widget _botInformationView(BuildContext context) {
    TextStyle smallStyle = context.titleSmall
        .copyWith(fontSize: 12.0, color: Theme.of(context).hintColor);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Theme.of(context).shadowColor.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  ImageConst.banner2,
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Yoga train chat bot",
                            style: context.titleMedium
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.info_outline, color: _primaryColor),
                        )
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        style: smallStyle,
                        children: [
                          const TextSpan(text: "Created by "),
                          TextSpan(
                            text: "Nguyen Minh Hung",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      ),
                    ),
                    Text("233 Followers", style: smallStyle)
                  ].expand((e) => [e, const SizedBox(height: 2.0)]).toList()
                    ..removeLast(),
                ),
              )
            ],
          ),
          const SizedBox(height: 5.0),
          const Divider(),
          const SizedBox(height: 5.0),
          ReadMoreText(
            'one\'s ability to execute daily activities with optimal performance, endurance, and strength with the management of disease, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio, fatigue, and stress and reduced sedentary behavio',
            trimLines: 2,
            trimCollapsedText: ' Show more',
            trimExpandedText: ' Show less',
            moreStyle: smallStyle.copyWith(color: _primaryColor),
            lessStyle: smallStyle.copyWith(color: _primaryColor),
            style: smallStyle.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Container _loadingField(BuildContext context) {
    return Container(
      color: Colors.black45,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: StyleLoadingWidget.foldingCube
            .renderWidget(size: 40.0, color: Theme.of(context).primaryColor),
      ),
    );
  }

  Container _supportBall(BuildContext context) {
    return Container(
      width: 100.0,
      padding: const EdgeInsets.all(5.0),
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 10.0),
              Image.asset(ImageConst.brainIcon, width: 12.0, height: 12.0),
              Expanded(
                child: Text(
                  ' Option',
                  style: context.titleSmall.copyWith(
                    fontSize: 12.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          // const Divider(),
          TextButton(
            onPressed: () async {
              final prompt = await context.selectedPrompt();
              if (prompt.isNotEmpty) {
                _textController.text = prompt;
              }
            },
            child: Text(
              'Prompt text',
              style: context.titleSmall.copyWith(fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
