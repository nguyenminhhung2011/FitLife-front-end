import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/repositories/trainer_repositories.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/all_pt/all_pt_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_pt_state.dart';
part 'all_pt_view_model.freezed.dart';

final allPtStateNotifier =
    AutoDisposeStateNotifierProvider<AllPtViewModel, AllPtState>(
        (ref) => injector.get<AllPtViewModel>());

@injectable
class AllPtViewModel extends StateNotifier<AllPtState> {
  final _trainerRepositories = injector.get<TrainerRepositories>();
  AllPtViewModel()
      : super(
          _Initial(
            data: AllPtData(
                trainers: List.empty(growable: true), searchContent: ""),
          ),
        );

  AllPtData get data => state.data;

  Future<void> getAllTrainers() async {
    state = _Loading(data: data);
    final response = await _trainerRepositories.getAllTrainer();
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) => _GetPtFailed(data: data, message: error.message),
      ifRight: (rData) => _GetPtSuccess(
        data: data.copyWith(trainers: rData),
      ),
    );
  }

  void changeTrainerType(String type) async {
    state = _ChangeTrainerTypeSuccess(data: data.copyWith(trainerType: type));
  }
}
