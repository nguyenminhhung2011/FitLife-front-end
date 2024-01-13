import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/all_chat/all_chat_data.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/all_chat/all_chat_view_model.dart';
import 'package:fit_life/mvvm/ui/conversation/view/widgets/conversation_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllChatView extends ConsumerStatefulWidget {
  const AllChatView({super.key});

  @override
  ConsumerState<AllChatView> createState() => _AllChatViewState();
}

class _AllChatViewState extends ConsumerState<AllChatView> {
  AllChatViewModel get _vm => ref.read(allChatStateNotifier.notifier);

  AllChatState get _state => ref.watch(allChatStateNotifier);

  AllChatData get _data => ref.watch(allChatStateNotifier).data;

  bool? get _loading => ref.watch(allChatStateNotifier).loading;

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      await _vm.getAllChat();
    });
    super.initState();
  }

  void _listenStateChange(AllChatState state) {
    state.maybeWhen(
      getAllChatFailed: (_, error) =>
          context.showSnackBar("🐛[Get all chat] Failed"),
      orElse: () async {},
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(allChatStateNotifier, (_, next) => _listenStateChange(next));
    return Stack(
      children: [
        _body(context),
        if (_loading ?? false)
          Container(
            color: Colors.black45,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: _loadingFunction(),
          )
      ],
    );
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView.separated(
        itemBuilder: (_, __) => const ConversationItemView(),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: _data.chats.length,
      ),
    );
  }

  Center _loadingFunction() {
    return Center(
      child: StyleLoadingWidget.foldingCube
          .renderWidget(size: 40.0, color: Theme.of(context).primaryColor),
    );
  }
}
