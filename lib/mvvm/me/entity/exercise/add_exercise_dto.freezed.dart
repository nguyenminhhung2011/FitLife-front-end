// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_exercise_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddExerciseDto _$AddExerciseDtoFromJson(Map<String, dynamic> json) {
  return _AddExerciseDto.fromJson(json);
}

/// @nodoc
mixin _$AddExerciseDto {
  Exercise get exercise => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  int get weights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddExerciseDtoCopyWith<AddExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExerciseDtoCopyWith<$Res> {
  factory $AddExerciseDtoCopyWith(
          AddExerciseDto value, $Res Function(AddExerciseDto) then) =
      _$AddExerciseDtoCopyWithImpl<$Res, AddExerciseDto>;
  @useResult
  $Res call(
      {Exercise exercise,
      DateTime? time,
      String difficulty,
      int reputation,
      int weights});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$AddExerciseDtoCopyWithImpl<$Res, $Val extends AddExerciseDto>
    implements $AddExerciseDtoCopyWith<$Res> {
  _$AddExerciseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? time = freezed,
    Object? difficulty = null,
    Object? reputation = null,
    Object? weights = null,
  }) {
    return _then(_value.copyWith(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      weights: null == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<$Res> get exercise {
    return $ExerciseCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddExerciseDtoCopyWith<$Res>
    implements $AddExerciseDtoCopyWith<$Res> {
  factory _$$_AddExerciseDtoCopyWith(
          _$_AddExerciseDto value, $Res Function(_$_AddExerciseDto) then) =
      __$$_AddExerciseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Exercise exercise,
      DateTime? time,
      String difficulty,
      int reputation,
      int weights});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$_AddExerciseDtoCopyWithImpl<$Res>
    extends _$AddExerciseDtoCopyWithImpl<$Res, _$_AddExerciseDto>
    implements _$$_AddExerciseDtoCopyWith<$Res> {
  __$$_AddExerciseDtoCopyWithImpl(
      _$_AddExerciseDto _value, $Res Function(_$_AddExerciseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? time = freezed,
    Object? difficulty = null,
    Object? reputation = null,
    Object? weights = null,
  }) {
    return _then(_$_AddExerciseDto(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      weights: null == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddExerciseDto implements _AddExerciseDto {
  const _$_AddExerciseDto(
      {required this.exercise,
      required this.time,
      required this.difficulty,
      required this.reputation,
      required this.weights});

  factory _$_AddExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddExerciseDtoFromJson(json);

  @override
  final Exercise exercise;
  @override
  final DateTime? time;
  @override
  final String difficulty;
  @override
  final int reputation;
  @override
  final int weights;

  @override
  String toString() {
    return 'AddExerciseDto(exercise: $exercise, time: $time, difficulty: $difficulty, reputation: $reputation, weights: $weights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddExerciseDto &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.weights, weights) || other.weights == weights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, exercise, time, difficulty, reputation, weights);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddExerciseDtoCopyWith<_$_AddExerciseDto> get copyWith =>
      __$$_AddExerciseDtoCopyWithImpl<_$_AddExerciseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddExerciseDtoToJson(
      this,
    );
  }
}

abstract class _AddExerciseDto implements AddExerciseDto {
  const factory _AddExerciseDto(
      {required final Exercise exercise,
      required final DateTime? time,
      required final String difficulty,
      required final int reputation,
      required final int weights}) = _$_AddExerciseDto;

  factory _AddExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_AddExerciseDto.fromJson;

  @override
  Exercise get exercise;
  @override
  DateTime? get time;
  @override
  String get difficulty;
  @override
  int get reputation;
  @override
  int get weights;
  @override
  @JsonKey(ignore: true)
  _$$_AddExerciseDtoCopyWith<_$_AddExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
