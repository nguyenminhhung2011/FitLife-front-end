// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentPlan {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get totalCaloriesBurn => throw _privateConstructorUsedError;
  PlanType get type => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentPlanCopyWith<CurrentPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentPlanCopyWith<$Res> {
  factory $CurrentPlanCopyWith(
          CurrentPlan value, $Res Function(CurrentPlan) then) =
      _$CurrentPlanCopyWithImpl<$Res, CurrentPlan>;
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime startDate,
      DateTime endDate,
      int totalCaloriesBurn,
      PlanType type,
      String goal});
}

/// @nodoc
class _$CurrentPlanCopyWithImpl<$Res, $Val extends CurrentPlan>
    implements $CurrentPlanCopyWith<$Res> {
  _$CurrentPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? totalCaloriesBurn = null,
    Object? type = null,
    Object? goal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCaloriesBurn: null == totalCaloriesBurn
          ? _value.totalCaloriesBurn
          : totalCaloriesBurn // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlanType,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentPlanCopyWith<$Res>
    implements $CurrentPlanCopyWith<$Res> {
  factory _$$_CurrentPlanCopyWith(
          _$_CurrentPlan value, $Res Function(_$_CurrentPlan) then) =
      __$$_CurrentPlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime startDate,
      DateTime endDate,
      int totalCaloriesBurn,
      PlanType type,
      String goal});
}

/// @nodoc
class __$$_CurrentPlanCopyWithImpl<$Res>
    extends _$CurrentPlanCopyWithImpl<$Res, _$_CurrentPlan>
    implements _$$_CurrentPlanCopyWith<$Res> {
  __$$_CurrentPlanCopyWithImpl(
      _$_CurrentPlan _value, $Res Function(_$_CurrentPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? totalCaloriesBurn = null,
    Object? type = null,
    Object? goal = null,
  }) {
    return _then(_$_CurrentPlan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalCaloriesBurn: null == totalCaloriesBurn
          ? _value.totalCaloriesBurn
          : totalCaloriesBurn // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlanType,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrentPlan implements _CurrentPlan {
  const _$_CurrentPlan(
      {required this.id,
      required this.name,
      required this.startDate,
      required this.endDate,
      required this.totalCaloriesBurn,
      required this.type,
      required this.goal});

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int totalCaloriesBurn;
  @override
  final PlanType type;
  @override
  final String goal;

  @override
  String toString() {
    return 'CurrentPlan(id: $id, name: $name, startDate: $startDate, endDate: $endDate, totalCaloriesBurn: $totalCaloriesBurn, type: $type, goal: $goal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentPlan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.totalCaloriesBurn, totalCaloriesBurn) ||
                other.totalCaloriesBurn == totalCaloriesBurn) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.goal, goal) || other.goal == goal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, startDate, endDate, totalCaloriesBurn, type, goal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentPlanCopyWith<_$_CurrentPlan> get copyWith =>
      __$$_CurrentPlanCopyWithImpl<_$_CurrentPlan>(this, _$identity);
}

abstract class _CurrentPlan implements CurrentPlan {
  const factory _CurrentPlan(
      {required final String id,
      required final String name,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int totalCaloriesBurn,
      required final PlanType type,
      required final String goal}) = _$_CurrentPlan;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get totalCaloriesBurn;
  @override
  PlanType get type;
  @override
  String get goal;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentPlanCopyWith<_$_CurrentPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
