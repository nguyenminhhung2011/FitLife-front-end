import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:fit_life/mvvm/object/model/trainer/trainer_model.dart';

class TrainerMapper {
  static TrainerModel toModel(Trainer trainer) => TrainerModel(
        id: trainer.id,
        name: trainer.name,
         model: trainer.model,
        prompt: trainer.prompt,
        image: trainer.image,
        greetingMessage: trainer.greetingMessage,
        bio: trainer.bio,
      );
}
