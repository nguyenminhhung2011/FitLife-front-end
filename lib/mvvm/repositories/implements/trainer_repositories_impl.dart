import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/trainer/trainer_api.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:fit_life/mvvm/object/model/trainer/trainer_model.dart';
import 'package:fit_life/mvvm/repositories/trainer_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TrainerRepositories)
class TrainerRepositoriesImpl extends BaseApi implements TrainerRepositories {
  final TrainerApi _trainerApi;
  TrainerRepositoriesImpl(this._trainerApi);

  @override
  Future<SResult<List<Trainer>>> getAllTrainer() async =>
      await apiCall<List<TrainerModel>?, List<Trainer>>(
        mapper: (result) => result!.map((e) => e.toEntity).toList(),
        request: () async => await _trainerApi.getAllTrainer(),
      );

  @override
  Future<SResult<Trainer>> createTrainer(
          {required TrainerModel trainerModel}) async =>
      await apiCall<TrainerModel?, Trainer>(
        mapper: (result) => result!.toEntity,
        request: () async =>
            await _trainerApi.createTrainer(body: trainerModel.toJson()),
      );

  @override
  Future<SResult> deleteTrainer(String trainerId) async => await apiCall(
      mapper: (_) => 0,
      request: () async => await _trainerApi.deleteTrainer(trainerId));

  @override
  Future<SResult<Trainer>> getTrainerById(String trainerId) async =>
      await apiCall<TrainerModel?, Trainer>(
        mapper: (result) => result!.toEntity,
        request: () async => await _trainerApi.getTrainerById(trainerId),
      );

  @override
  Future<SResult<Trainer>> updateTrainer(String trainerId,
          {required TrainerModel trainerModel}) async =>
      await apiCall<TrainerModel?, Trainer>(
        mapper: (result) => result!.toEntity,
        request: () async => await _trainerApi.updateTrainer(trainerId,
            body: trainerModel.toJson()),
      );
}
