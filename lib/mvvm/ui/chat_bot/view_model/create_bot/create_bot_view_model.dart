import 'dart:io';

import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/core/services/image_pic_service.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/create_bot/create_bot_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_bot_state.dart';

part 'create_bot_view_model.freezed.dart';

final createBotStateNotifier =
    AutoDisposeStateNotifierProvider<CreateBotViewModel, CreateBotState>(
        (ref) => injector.get<CreateBotViewModel>());

@injectable
class CreateBotViewModel extends StateNotifier<CreateBotState> {
  CreateBotViewModel()
      : super(
            _Initial(data: CreateBotData(model: Constant.modelConstant.first)));

  CreateBotData get data => state.data;

  void changeBehaviorTab(int newTab) {
    state = _ChangeBehaviorTabSuccess(data: data.copyWith(behaviorTab: newTab));
  }

  void changeModel(String? newModel) {
    state = _ChangeModelSuccess(
      data: data.copyWith(model: newModel ?? Constant.modelConstant.first),
    );
  }

  void selectedImage(BothImageData? image) {
    state = _ChangeBotImageSuccess(data: data.copyWith(botImage: image));
  }

  void selectSourceFile(File? file) {
    state = _ChangeSourceFileSuccess(data: data.copyWith(sourceFile: file));
  }
}
