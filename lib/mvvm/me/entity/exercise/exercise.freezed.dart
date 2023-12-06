// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get bodyPart => throw _privateConstructorUsedError;
  double? get caloriesPerMinute => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  int? get set => throw _privateConstructorUsedError;
  int? get reps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String? bodyPart,
      double? caloriesPerMinute,
      String? videoUrl,
      int? set,
      int? reps});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? bodyPart = freezed,
    Object? caloriesPerMinute = freezed,
    Object? videoUrl = freezed,
    Object? set = freezed,
    Object? reps = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: freezed == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesPerMinute: freezed == caloriesPerMinute
          ? _value.caloriesPerMinute
          : caloriesPerMinute // ignore: cast_nullable_to_non_nullable
              as double?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      set: freezed == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int?,
      reps: freezed == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$$_ExerciseCopyWith(
          _$_Exercise value, $Res Function(_$_Exercise) then) =
      __$$_ExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String? bodyPart,
      double? caloriesPerMinute,
      String? videoUrl,
      int? set,
      int? reps});
}

/// @nodoc
class __$$_ExerciseCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$_Exercise>
    implements _$$_ExerciseCopyWith<$Res> {
  __$$_ExerciseCopyWithImpl(
      _$_Exercise _value, $Res Function(_$_Exercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? bodyPart = freezed,
    Object? caloriesPerMinute = freezed,
    Object? videoUrl = freezed,
    Object? set = freezed,
    Object? reps = freezed,
  }) {
    return _then(_$_Exercise(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: freezed == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String?,
      caloriesPerMinute: freezed == caloriesPerMinute
          ? _value.caloriesPerMinute
          : caloriesPerMinute // ignore: cast_nullable_to_non_nullable
              as double?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      set: freezed == set
          ? _value.set
          : set // ignore: cast_nullable_to_non_nullable
              as int?,
      reps: freezed == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exercise implements _Exercise {
  const _$_Exercise(
      {required this.id,
      required this.name,
      required this.description,
      this.bodyPart,
      this.caloriesPerMinute,
      this.videoUrl,
      this.set,
      this.reps});

  factory _$_Exercise.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? bodyPart;
  @override
  final double? caloriesPerMinute;
  @override
  final String? videoUrl;
  @override
  final int? set;
  @override
  final int? reps;

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, description: $description, bodyPart: $bodyPart, caloriesPerMinute: $caloriesPerMinute, videoUrl: $videoUrl, set: $set, reps: $reps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            (identical(other.caloriesPerMinute, caloriesPerMinute) ||
                other.caloriesPerMinute == caloriesPerMinute) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.set, set) || other.set == set) &&
            (identical(other.reps, reps) || other.reps == reps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, bodyPart,
      caloriesPerMinute, videoUrl, set, reps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      __$$_ExerciseCopyWithImpl<_$_Exercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {required final int id,
      required final String name,
      required final String description,
      final String? bodyPart,
      final double? caloriesPerMinute,
      final String? videoUrl,
      final int? set,
      final int? reps}) = _$_Exercise;

  factory _Exercise.fromJson(Map<String, dynamic> json) = _$_Exercise.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String? get bodyPart;
  @override
  double? get caloriesPerMinute;
  @override
  String? get videoUrl;
  @override
  int? get set;
  @override
  int? get reps;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseCopyWith<_$_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
