// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutPlan _$WorkoutPlanFromJson(Map<String, dynamic> json) {
  return _WorkoutPlan.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPlan {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  PlanType get planType => throw _privateConstructorUsedError;
  List<DailyWorkout>? get dailyWorkouts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutPlanCopyWith<WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanCopyWith<$Res> {
  factory $WorkoutPlanCopyWith(
          WorkoutPlan value, $Res Function(WorkoutPlan) then) =
      _$WorkoutPlanCopyWithImpl<$Res, WorkoutPlan>;
  @useResult
  $Res call(
      {String name,
      String description,
      DateTime? startDate,
      DateTime? endDate,
      PlanType planType,
      List<DailyWorkout>? dailyWorkouts});
}

/// @nodoc
class _$WorkoutPlanCopyWithImpl<$Res, $Val extends WorkoutPlan>
    implements $WorkoutPlanCopyWith<$Res> {
  _$WorkoutPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? planType = null,
    Object? dailyWorkouts = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      planType: null == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as PlanType,
      dailyWorkouts: freezed == dailyWorkouts
          ? _value.dailyWorkouts
          : dailyWorkouts // ignore: cast_nullable_to_non_nullable
              as List<DailyWorkout>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutPlanCopyWith<$Res>
    implements $WorkoutPlanCopyWith<$Res> {
  factory _$$_WorkoutPlanCopyWith(
          _$_WorkoutPlan value, $Res Function(_$_WorkoutPlan) then) =
      __$$_WorkoutPlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      DateTime? startDate,
      DateTime? endDate,
      PlanType planType,
      List<DailyWorkout>? dailyWorkouts});
}

/// @nodoc
class __$$_WorkoutPlanCopyWithImpl<$Res>
    extends _$WorkoutPlanCopyWithImpl<$Res, _$_WorkoutPlan>
    implements _$$_WorkoutPlanCopyWith<$Res> {
  __$$_WorkoutPlanCopyWithImpl(
      _$_WorkoutPlan _value, $Res Function(_$_WorkoutPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? planType = null,
    Object? dailyWorkouts = freezed,
  }) {
    return _then(_$_WorkoutPlan(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      planType: null == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as PlanType,
      dailyWorkouts: freezed == dailyWorkouts
          ? _value._dailyWorkouts
          : dailyWorkouts // ignore: cast_nullable_to_non_nullable
              as List<DailyWorkout>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutPlan implements _WorkoutPlan {
  const _$_WorkoutPlan(
      {required this.name,
      required this.description,
      this.startDate,
      this.endDate,
      this.planType = PlanType.def,
      final List<DailyWorkout>? dailyWorkouts})
      : _dailyWorkouts = dailyWorkouts;

  factory _$_WorkoutPlan.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutPlanFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final PlanType planType;
  final List<DailyWorkout>? _dailyWorkouts;
  @override
  List<DailyWorkout>? get dailyWorkouts {
    final value = _dailyWorkouts;
    if (value == null) return null;
    if (_dailyWorkouts is EqualUnmodifiableListView) return _dailyWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkoutPlan(name: $name, description: $description, startDate: $startDate, endDate: $endDate, planType: $planType, dailyWorkouts: $dailyWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutPlan &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.planType, planType) ||
                other.planType == planType) &&
            const DeepCollectionEquality()
                .equals(other._dailyWorkouts, _dailyWorkouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, startDate,
      endDate, planType, const DeepCollectionEquality().hash(_dailyWorkouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutPlanCopyWith<_$_WorkoutPlan> get copyWith =>
      __$$_WorkoutPlanCopyWithImpl<_$_WorkoutPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutPlanToJson(
      this,
    );
  }
}

abstract class _WorkoutPlan implements WorkoutPlan {
  const factory _WorkoutPlan(
      {required final String name,
      required final String description,
      final DateTime? startDate,
      final DateTime? endDate,
      final PlanType planType,
      final List<DailyWorkout>? dailyWorkouts}) = _$_WorkoutPlan;

  factory _WorkoutPlan.fromJson(Map<String, dynamic> json) =
      _$_WorkoutPlan.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  PlanType get planType;
  @override
  List<DailyWorkout>? get dailyWorkouts;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutPlanCopyWith<_$_WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
