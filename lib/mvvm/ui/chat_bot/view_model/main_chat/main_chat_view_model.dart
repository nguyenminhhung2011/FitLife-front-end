import 'package:fit_life/core/dependency_injection/di.dart';
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
  MainChatViewModel() : super(const _Initial(data: MainChatData()));

  MainChatData get data => state.data;

  void changeTab(int newTab) {
    state = _ChangeTabSuccess(data: data.copyWith(currentTab: newTab));
  }
}
