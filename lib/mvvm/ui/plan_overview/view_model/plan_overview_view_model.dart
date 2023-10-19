import 'package:fit_life/mvvm/ui/plan_overview/view_model/plan_overview_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plan_overview_state.dart';

part 'plan_overview_view_model.freezed.dart';

@injectable
class PlanOverViewViewModel extends StateNotifier<PlanOverViewState> {
  PlanOverViewViewModel() : super(const _Initial(data: PlanOverViewData()));
}
