import 'dart:io';

import 'package:fit_life/core/services/image_pic_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bot_data.freezed.dart';

@freezed
class CreateBotData with _$CreateBotData {
  const factory CreateBotData({
    BothImageData? botImage,
    File? sourceFile,
    @Default(0) int behaviorTab,
    required String model,
  }) = _CreateBotData;
}
