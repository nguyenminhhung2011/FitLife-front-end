// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomExercise {
  int get id => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  Exercise get exercise => throw _privateConstructorUsedError;
  int get rep => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get calories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomExerciseCopyWith<CustomExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExerciseCopyWith<$Res> {
  factory $CustomExerciseCopyWith(
          CustomExercise value, $Res Function(CustomExercise) then) =
      _$CustomExerciseCopyWithImpl<$Res, CustomExercise>;
  @useResult
  $Res call(
      {int id,
      int time,
      String difficulty,
      Exercise exercise,
      int rep,
      int weight,
      int calories});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$CustomExerciseCopyWithImpl<$Res, $Val extends CustomExercise>
    implements $CustomExerciseCopyWith<$Res> {
  _$CustomExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? time = null,
    Object? difficulty = null,
    Object? exercise = null,
    Object? rep = null,
    Object? weight = null,
    Object? calories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      rep: null == rep
          ? _value.rep
          : rep // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CustomExerciseCopyWith<$Res>
    implements $CustomExerciseCopyWith<$Res> {
  factory _$$_CustomExerciseCopyWith(
          _$_CustomExercise value, $Res Function(_$_CustomExercise) then) =
      __$$_CustomExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int time,
      String difficulty,
      Exercise exercise,
      int rep,
      int weight,
      int calories});

  @override
  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$_CustomExerciseCopyWithImpl<$Res>
    extends _$CustomExerciseCopyWithImpl<$Res, _$_CustomExercise>
    implements _$$_CustomExerciseCopyWith<$Res> {
  __$$_CustomExerciseCopyWithImpl(
      _$_CustomExercise _value, $Res Function(_$_CustomExercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? time = null,
    Object? difficulty = null,
    Object? exercise = null,
    Object? rep = null,
    Object? weight = null,
    Object? calories = null,
  }) {
    return _then(_$_CustomExercise(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      rep: null == rep
          ? _value.rep
          : rep // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CustomExercise implements _CustomExercise {
  const _$_CustomExercise(
      {required this.id,
      required this.time,
      required this.difficulty,
      required this.exercise,
      required this.rep,
      required this.weight,
      required this.calories});

  @override
  final int id;
  @override
  final int time;
  @override
  final String difficulty;
  @override
  final Exercise exercise;
  @override
  final int rep;
  @override
  final int weight;
  @override
  final int calories;

  @override
  String toString() {
    return 'CustomExercise(id: $id, time: $time, difficulty: $difficulty, exercise: $exercise, rep: $rep, weight: $weight, calories: $calories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomExercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.rep, rep) || other.rep == rep) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.calories, calories) ||
                other.calories == calories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, time, difficulty, exercise, rep, weight, calories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomExerciseCopyWith<_$_CustomExercise> get copyWith =>
      __$$_CustomExerciseCopyWithImpl<_$_CustomExercise>(this, _$identity);
}

abstract class _CustomExercise implements CustomExercise {
  const factory _CustomExercise(
      {required final int id,
      required final int time,
      required final String difficulty,
      required final Exercise exercise,
      required final int rep,
      required final int weight,
      required final int calories}) = _$_CustomExercise;

  @override
  int get id;
  @override
  int get time;
  @override
  String get difficulty;
  @override
  Exercise get exercise;
  @override
  int get rep;
  @override
  int get weight;
  @override
  int get calories;
  @override
  @JsonKey(ignore: true)
  _$$_CustomExerciseCopyWith<_$_CustomExercise> get copyWith =>
      throw _privateConstructorUsedError;
}
