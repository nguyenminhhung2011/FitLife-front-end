import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/enum/gender.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/mvvm/object/entity/user/user_profile_entity.dart';
import 'package:fit_life/mvvm/object/model/user/update_user_profile.dart';
import 'package:fit_life/mvvm/repositories/user_repositories.dart';
import 'package:fit_life/mvvm/ui/health_overview/view_model/health_overview_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'health_overview_state.dart';

part 'health_overview_view_model.freezed.dart';

final healthOverviewStateNotifier = AutoDisposeStateNotifierProvider<
    HealthOverviewViewModel,
    HealthOverviewState>((ref) => injector.get<HealthOverviewViewModel>());

@injectable
class HealthOverviewViewModel extends StateNotifier<HealthOverviewState> {
  final UserRepositories _userRepositories = injector.get<UserRepositories>();

  HealthOverviewViewModel() : super(const _Initial(data: HealthOverviewData()));

  HealthOverviewData get data => state.data;

  Future<void> updateUserProfile(HealthOverviewData newData) async {
    if (state is _Loading) return;
    state = _Loading(data: state.data);
    final response = await _userRepositories.updateUserProfile(
      updateUserProfile: UpdateUserProfile(
          gender: (newData.isMale) ? Gender.male : Gender.female,
          weight: newData.weight.toDouble(),
          height: newData.height.toDouble(),
          frequency: Constant.durationConst[newData.duration]),
    );
    if (!mounted) return;
    state = (response).fold(
      ifLeft: (error) =>
          _UpdateInformationFailed(data: data, message: error.message),
      ifRight: (rData) => _UpdateInformationSuccess(data: data),
    );
  }

  Future<void> getUserProfile() async {
    if (state is _Loading) return;
    state = _Loading(data: data);
    final response = await _userRepositories.getUserProfile();
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _GetUserProfileFailed(data: data, message: error.message),
      ifRight: (rData) {
        if (rData.userProfile == null) {
          return _GetUserProfileFailed(data: data, message: "Data null");
        }
        return _GetUserProfileSuccess(data: data, profile: rData.userProfile!);
      },
    );
  }
}
