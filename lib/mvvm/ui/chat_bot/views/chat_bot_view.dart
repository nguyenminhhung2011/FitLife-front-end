import 'package:drag_ball/drag_ball.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/chat_bot_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/input_widget.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/message_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ChatActions { regenerate, clear, share }

extension ChatActionsExt on ChatActions {
  String get toDisplayText => switch (this) {
        ChatActions.clear => "Clear conversation",
        ChatActions.regenerate => "Regenerate response",
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
                  imageUrl: ImageConst.chatBackgroundImg,
                  fit: BoxFit.cover,
                  color: _primaryColor.withOpacity(0.1),
                  isNetworkImage: false,
                ),
              ),
            Positioned.fill(
              child: Container(
                color: _primaryColor.withOpacity(0.1),
              ),
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
                case ChatActions.regenerate:
                  _vm.reSendMessage();

                default:
                  () {};
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<ChatActions>>[
              ...[ChatActions.regenerate, ChatActions.share, ChatActions.clear]
                  .map(
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
              itemCount: _data.messages.length,
              itemBuilder: (_, index) {
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
