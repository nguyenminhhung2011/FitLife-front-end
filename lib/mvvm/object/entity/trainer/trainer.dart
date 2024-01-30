import 'package:fit_life/mvvm/object/entity/user/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainer.freezed.dart';

@freezed
class Trainer with _$Trainer{
  const factory Trainer({
    required String id, 
    required String name, 
    required String model, 
    required String prompt, 
    required String image, 
    required String greetingMessage, 
    required String bio, 
    User? user, 
  }) = _Trainer;
}