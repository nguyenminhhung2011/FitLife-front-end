import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:fit_life/mvvm/object/model/trainer/trainer_model.dart';

abstract class TrainerRepositories {
  Future<SResult<List<Trainer>>> getAllTrainer();
  Future<SResult<Trainer>> createTrainer({required TrainerModel trainerModel});
  Future<SResult> deleteTrainer(String trainerId);
  Future<SResult<Trainer>> updateTrainer(String trainerId,
      {required TrainerModel trainerModel});
  Future<SResult<Trainer>> getTrainerById(String trainerId);
}
