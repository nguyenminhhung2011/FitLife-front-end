import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repositories/chat_repositories.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/main_chat/main_chat_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_chat_state.dart';

part 'main_chat_view_model.freezed.dart';

final mainChatStateNotifier =
    AutoDisposeStateNotifierProvider<MainChatViewModel, MainChatState>(
        (ref) => injector.get<MainChatViewModel>());

@injectable
class MainChatViewModel extends StateNotifier<MainChatState> {
  final ChatRepositories _chatRepositories = injector.get<ChatRepositories>();
  MainChatViewModel() : super(const _Initial(data: MainChatData()));

  MainChatData get data => state.data;

  Future<void> getChatThreads() async {
    state = _Loading(data: data);

    final response = await _chatRepositories.getThreadByUser();
    if (!mounted) return;

    state = response.fold(
      ifLeft: (error) =>
          _GetChatThreadFailed(data: data, message: error.message),
      ifRight: (rData) => _GetChatThreadSuccess(
        data: data.copyWith(chatThreads: rData),
      ),
    );
  }

  void changeTab(int newTab) {
    state = _ChangeTabSuccess(data: data.copyWith(currentTab: newTab));
  }

  void changeFocusChat(String newId) async {
    state = _ChangeChatFocus(
        data: data.copyWith(currentChatId: null, currentTab: 0));
    await Future.delayed(const Duration(milliseconds: 100));
    state = _ChangeChatFocus(
        data: data.copyWith(currentChatId: newId, currentTab: 0));
  }
}
