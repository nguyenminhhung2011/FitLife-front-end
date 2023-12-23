// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanOverViewData {
  WorkoutPlan? get currentPlan => throw _privateConstructorUsedError;
  List<WorkoutPlan>? get workoutPlans => throw _privateConstructorUsedError;
  bool get isLoadingWorkoutPlans => throw _privateConstructorUsedError;
  bool get isLoadingCurrentPlan => throw _privateConstructorUsedError;
  bool get isLoadingCreatePlan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanOverViewDataCopyWith<PlanOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanOverViewDataCopyWith<$Res> {
  factory $PlanOverViewDataCopyWith(
          PlanOverViewData value, $Res Function(PlanOverViewData) then) =
      _$PlanOverViewDataCopyWithImpl<$Res, PlanOverViewData>;
  @useResult
  $Res call(
      {WorkoutPlan? currentPlan,
      List<WorkoutPlan>? workoutPlans,
      bool isLoadingWorkoutPlans,
      bool isLoadingCurrentPlan,
      bool isLoadingCreatePlan});

  $WorkoutPlanCopyWith<$Res>? get currentPlan;
}

/// @nodoc
class _$PlanOverViewDataCopyWithImpl<$Res, $Val extends PlanOverViewData>
    implements $PlanOverViewDataCopyWith<$Res> {
  _$PlanOverViewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlan = freezed,
    Object? workoutPlans = freezed,
    Object? isLoadingWorkoutPlans = null,
    Object? isLoadingCurrentPlan = null,
    Object? isLoadingCreatePlan = null,
  }) {
    return _then(_value.copyWith(
      currentPlan: freezed == currentPlan
          ? _value.currentPlan
          : currentPlan // ignore: cast_nullable_to_non_nullable
              as WorkoutPlan?,
      workoutPlans: freezed == workoutPlans
          ? _value.workoutPlans
          : workoutPlans // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPlan>?,
      isLoadingWorkoutPlans: null == isLoadingWorkoutPlans
          ? _value.isLoadingWorkoutPlans
          : isLoadingWorkoutPlans // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCurrentPlan: null == isLoadingCurrentPlan
          ? _value.isLoadingCurrentPlan
          : isLoadingCurrentPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCreatePlan: null == isLoadingCreatePlan
          ? _value.isLoadingCreatePlan
          : isLoadingCreatePlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutPlanCopyWith<$Res>? get currentPlan {
    if (_value.currentPlan == null) {
      return null;
    }

    return $WorkoutPlanCopyWith<$Res>(_value.currentPlan!, (value) {
      return _then(_value.copyWith(currentPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlanOverViewDataCopyWith<$Res>
    implements $PlanOverViewDataCopyWith<$Res> {
  factory _$$_PlanOverViewDataCopyWith(
          _$_PlanOverViewData value, $Res Function(_$_PlanOverViewData) then) =
      __$$_PlanOverViewDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkoutPlan? currentPlan,
      List<WorkoutPlan>? workoutPlans,
      bool isLoadingWorkoutPlans,
      bool isLoadingCurrentPlan,
      bool isLoadingCreatePlan});

  @override
  $WorkoutPlanCopyWith<$Res>? get currentPlan;
}

/// @nodoc
class __$$_PlanOverViewDataCopyWithImpl<$Res>
    extends _$PlanOverViewDataCopyWithImpl<$Res, _$_PlanOverViewData>
    implements _$$_PlanOverViewDataCopyWith<$Res> {
  __$$_PlanOverViewDataCopyWithImpl(
      _$_PlanOverViewData _value, $Res Function(_$_PlanOverViewData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlan = freezed,
    Object? workoutPlans = freezed,
    Object? isLoadingWorkoutPlans = null,
    Object? isLoadingCurrentPlan = null,
    Object? isLoadingCreatePlan = null,
  }) {
    return _then(_$_PlanOverViewData(
      currentPlan: freezed == currentPlan
          ? _value.currentPlan
          : currentPlan // ignore: cast_nullable_to_non_nullable
              as WorkoutPlan?,
      workoutPlans: freezed == workoutPlans
          ? _value._workoutPlans
          : workoutPlans // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPlan>?,
      isLoadingWorkoutPlans: null == isLoadingWorkoutPlans
          ? _value.isLoadingWorkoutPlans
          : isLoadingWorkoutPlans // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCurrentPlan: null == isLoadingCurrentPlan
          ? _value.isLoadingCurrentPlan
          : isLoadingCurrentPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCreatePlan: null == isLoadingCreatePlan
          ? _value.isLoadingCreatePlan
          : isLoadingCreatePlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlanOverViewData implements _PlanOverViewData {
  const _$_PlanOverViewData(
      {this.currentPlan,
      final List<WorkoutPlan>? workoutPlans,
      this.isLoadingWorkoutPlans = false,
      this.isLoadingCurrentPlan = false,
      this.isLoadingCreatePlan = false})
      : _workoutPlans = workoutPlans;

  @override
  final WorkoutPlan? currentPlan;
  final List<WorkoutPlan>? _workoutPlans;
  @override
  List<WorkoutPlan>? get workoutPlans {
    final value = _workoutPlans;
    if (value == null) return null;
    if (_workoutPlans is EqualUnmodifiableListView) return _workoutPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoadingWorkoutPlans;
  @override
  @JsonKey()
  final bool isLoadingCurrentPlan;
  @override
  @JsonKey()
  final bool isLoadingCreatePlan;

  @override
  String toString() {
    return 'PlanOverViewData(currentPlan: $currentPlan, workoutPlans: $workoutPlans, isLoadingWorkoutPlans: $isLoadingWorkoutPlans, isLoadingCurrentPlan: $isLoadingCurrentPlan, isLoadingCreatePlan: $isLoadingCreatePlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanOverViewData &&
            (identical(other.currentPlan, currentPlan) ||
                other.currentPlan == currentPlan) &&
            const DeepCollectionEquality()
                .equals(other._workoutPlans, _workoutPlans) &&
            (identical(other.isLoadingWorkoutPlans, isLoadingWorkoutPlans) ||
                other.isLoadingWorkoutPlans == isLoadingWorkoutPlans) &&
            (identical(other.isLoadingCurrentPlan, isLoadingCurrentPlan) ||
                other.isLoadingCurrentPlan == isLoadingCurrentPlan) &&
            (identical(other.isLoadingCreatePlan, isLoadingCreatePlan) ||
                other.isLoadingCreatePlan == isLoadingCreatePlan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPlan,
      const DeepCollectionEquality().hash(_workoutPlans),
      isLoadingWorkoutPlans,
      isLoadingCurrentPlan,
      isLoadingCreatePlan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanOverViewDataCopyWith<_$_PlanOverViewData> get copyWith =>
      __$$_PlanOverViewDataCopyWithImpl<_$_PlanOverViewData>(this, _$identity);
}

abstract class _PlanOverViewData implements PlanOverViewData {
  const factory _PlanOverViewData(
      {final WorkoutPlan? currentPlan,
      final List<WorkoutPlan>? workoutPlans,
      final bool isLoadingWorkoutPlans,
      final bool isLoadingCurrentPlan,
      final bool isLoadingCreatePlan}) = _$_PlanOverViewData;

  @override
  WorkoutPlan? get currentPlan;
  @override
  List<WorkoutPlan>? get workoutPlans;
  @override
  bool get isLoadingWorkoutPlans;
  @override
  bool get isLoadingCurrentPlan;
  @override
  bool get isLoadingCreatePlan;
  @override
  @JsonKey(ignore: true)
  _$$_PlanOverViewDataCopyWith<_$_PlanOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}
