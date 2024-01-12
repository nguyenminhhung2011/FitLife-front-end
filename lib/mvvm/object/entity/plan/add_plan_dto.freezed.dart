// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddPlanDto {
  String? get title => throw _privateConstructorUsedError;
  String? get goal => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get preferences => throw _privateConstructorUsedError;
  DateTime? get timeStart => throw _privateConstructorUsedError;
  DateTime? get timeFinish => throw _privateConstructorUsedError;
  bool get isUsingAIGeneratePlan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPlanDtoCopyWith<AddPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlanDtoCopyWith<$Res> {
  factory $AddPlanDtoCopyWith(
          AddPlanDto value, $Res Function(AddPlanDto) then) =
      _$AddPlanDtoCopyWithImpl<$Res, AddPlanDto>;
  @useResult
  $Res call(
      {String? title,
      String? goal,
      String? level,
      String? preferences,
      DateTime? timeStart,
      DateTime? timeFinish,
      bool isUsingAIGeneratePlan});
}

/// @nodoc
class _$AddPlanDtoCopyWithImpl<$Res, $Val extends AddPlanDto>
    implements $AddPlanDtoCopyWith<$Res> {
  _$AddPlanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? goal = freezed,
    Object? level = freezed,
    Object? preferences = freezed,
    Object? timeStart = freezed,
    Object? timeFinish = freezed,
    Object? isUsingAIGeneratePlan = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeFinish: freezed == timeFinish
          ? _value.timeFinish
          : timeFinish // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUsingAIGeneratePlan: null == isUsingAIGeneratePlan
          ? _value.isUsingAIGeneratePlan
          : isUsingAIGeneratePlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddPlanDtoCopyWith<$Res>
    implements $AddPlanDtoCopyWith<$Res> {
  factory _$$_AddPlanDtoCopyWith(
          _$_AddPlanDto value, $Res Function(_$_AddPlanDto) then) =
      __$$_AddPlanDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? goal,
      String? level,
      String? preferences,
      DateTime? timeStart,
      DateTime? timeFinish,
      bool isUsingAIGeneratePlan});
}

/// @nodoc
class __$$_AddPlanDtoCopyWithImpl<$Res>
    extends _$AddPlanDtoCopyWithImpl<$Res, _$_AddPlanDto>
    implements _$$_AddPlanDtoCopyWith<$Res> {
  __$$_AddPlanDtoCopyWithImpl(
      _$_AddPlanDto _value, $Res Function(_$_AddPlanDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? goal = freezed,
    Object? level = freezed,
    Object? preferences = freezed,
    Object? timeStart = freezed,
    Object? timeFinish = freezed,
    Object? isUsingAIGeneratePlan = null,
  }) {
    return _then(_$_AddPlanDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      preferences: freezed == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeFinish: freezed == timeFinish
          ? _value.timeFinish
          : timeFinish // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isUsingAIGeneratePlan: null == isUsingAIGeneratePlan
          ? _value.isUsingAIGeneratePlan
          : isUsingAIGeneratePlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddPlanDto implements _AddPlanDto {
  const _$_AddPlanDto(
      {this.title,
      this.goal,
      this.level,
      this.preferences,
      this.timeStart,
      this.timeFinish,
      this.isUsingAIGeneratePlan = false});

  @override
  final String? title;
  @override
  final String? goal;
  @override
  final String? level;
  @override
  final String? preferences;
  @override
  final DateTime? timeStart;
  @override
  final DateTime? timeFinish;
  @override
  @JsonKey()
  final bool isUsingAIGeneratePlan;

  @override
  String toString() {
    return 'AddPlanDto(title: $title, goal: $goal, level: $level, preferences: $preferences, timeStart: $timeStart, timeFinish: $timeFinish, isUsingAIGeneratePlan: $isUsingAIGeneratePlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPlanDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeFinish, timeFinish) ||
                other.timeFinish == timeFinish) &&
            (identical(other.isUsingAIGeneratePlan, isUsingAIGeneratePlan) ||
                other.isUsingAIGeneratePlan == isUsingAIGeneratePlan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, goal, level, preferences,
      timeStart, timeFinish, isUsingAIGeneratePlan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPlanDtoCopyWith<_$_AddPlanDto> get copyWith =>
      __$$_AddPlanDtoCopyWithImpl<_$_AddPlanDto>(this, _$identity);
}

abstract class _AddPlanDto implements AddPlanDto {
  const factory _AddPlanDto(
      {final String? title,
      final String? goal,
      final String? level,
      final String? preferences,
      final DateTime? timeStart,
      final DateTime? timeFinish,
      final bool isUsingAIGeneratePlan}) = _$_AddPlanDto;

  @override
  String? get title;
  @override
  String? get goal;
  @override
  String? get level;
  @override
  String? get preferences;
  @override
  DateTime? get timeStart;
  @override
  DateTime? get timeFinish;
  @override
  bool get isUsingAIGeneratePlan;
  @override
  @JsonKey(ignore: true)
  _$$_AddPlanDtoCopyWith<_$_AddPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}
