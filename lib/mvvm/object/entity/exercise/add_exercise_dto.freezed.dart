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
  int get exercise => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get rep => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

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
  $Res call({int exercise, String difficulty, int rep, int weight, int time});
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
    Object? difficulty = null,
    Object? rep = null,
    Object? weight = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      rep: null == rep
          ? _value.rep
          : rep // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({int exercise, String difficulty, int rep, int weight, int time});
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
    Object? difficulty = null,
    Object? rep = null,
    Object? weight = null,
    Object? time = null,
  }) {
    return _then(_$_AddExerciseDto(
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      rep: null == rep
          ? _value.rep
          : rep // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddExerciseDto implements _AddExerciseDto {
  const _$_AddExerciseDto(
      {required this.exercise,
      required this.difficulty,
      required this.rep,
      required this.weight,
      required this.time});

  factory _$_AddExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddExerciseDtoFromJson(json);

  @override
  final int exercise;
  @override
  final String difficulty;
  @override
  final int rep;
  @override
  final int weight;
  @override
  final int time;

  @override
  String toString() {
    return 'AddExerciseDto(exercise: $exercise, difficulty: $difficulty, rep: $rep, weight: $weight, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddExerciseDto &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.rep, rep) || other.rep == rep) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, exercise, difficulty, rep, weight, time);

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
      {required final int exercise,
      required final String difficulty,
      required final int rep,
      required final int weight,
      required final int time}) = _$_AddExerciseDto;

  factory _AddExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_AddExerciseDto.fromJson;

  @override
  int get exercise;
  @override
  String get difficulty;
  @override
  int get rep;
  @override
  int get weight;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$_AddExerciseDtoCopyWith<_$_AddExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
