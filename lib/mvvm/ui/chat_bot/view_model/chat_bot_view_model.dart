import 'package:fit_life/mvvm/ui/chat_bot/view_model/chat_bot_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'chat_bot_state.dart';

part 'chat_bot_view_model.freezed.dart';

final chatBotStateNotifier =
    AutoDisposeStateNotifierProvider<ChatBotViewModel, ChatBotState>(
        (ref) => ChatBotViewModel());

@injectable
class ChatBotViewModel extends StateNotifier<ChatBotState> {
  ChatBotViewModel() : super(const _Initial(data: ChatBotData()));
}
