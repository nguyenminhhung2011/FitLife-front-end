import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repositories/chat_repositories.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/all_chat/all_chat_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_chat_state.dart';
part 'all_chat_view_model.freezed.dart';

final allChatStateNotifier =
    AutoDisposeStateNotifierProvider<AllChatViewModel, AllChatState>(
  (ref) => injector.get<AllChatViewModel>(),
);

@injectable
class AllChatViewModel extends StateNotifier<AllChatState> {
  final _chatRepositories = injector.get<ChatRepositories>();
  AllChatViewModel()
      : super(
          _Initial(data: AllChatData(chats: List.empty(growable: true))),
        );

  AllChatData get data => state.data;

  Future<void> getAllChat() async {
    state = _Loading(data: data);
    final response = await _chatRepositories.getThreadByUser();

    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetAllChatFailed(data: data, message: error.message),
      ifRight: (rData) => _GetAllChatSuccess(
        data: data.copyWith(chats: [...data.chats, ...rData]),
      ),
    );
  }
}
