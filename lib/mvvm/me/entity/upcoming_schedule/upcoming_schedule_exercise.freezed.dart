// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_schedule_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingScheduleExercise _$UpcomingScheduleExerciseFromJson(
    Map<String, dynamic> json) {
  return _UpcomingScheduleExercise.fromJson(json);
}

/// @nodoc
mixin _$UpcomingScheduleExercise {
  int? get minutes => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get endAt => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  List<Exercise>? get exercises => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingScheduleExerciseCopyWith<UpcomingScheduleExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingScheduleExerciseCopyWith<$Res> {
  factory $UpcomingScheduleExerciseCopyWith(UpcomingScheduleExercise value,
          $Res Function(UpcomingScheduleExercise) then) =
      _$UpcomingScheduleExerciseCopyWithImpl<$Res, UpcomingScheduleExercise>;
  @useResult
  $Res call(
      {int? minutes,
      String? image,
      DateTime? endAt,
      DateTime? startAt,
      List<Exercise>? exercises,
      String title,
      String description});
}

/// @nodoc
class _$UpcomingScheduleExerciseCopyWithImpl<$Res,
        $Val extends UpcomingScheduleExercise>
    implements $UpcomingScheduleExerciseCopyWith<$Res> {
  _$UpcomingScheduleExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = freezed,
    Object? image = freezed,
    Object? endAt = freezed,
    Object? startAt = freezed,
    Object? exercises = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercises: freezed == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpcomingScheduleExerciseCopyWith<$Res>
    implements $UpcomingScheduleExerciseCopyWith<$Res> {
  factory _$$_UpcomingScheduleExerciseCopyWith(
          _$_UpcomingScheduleExercise value,
          $Res Function(_$_UpcomingScheduleExercise) then) =
      __$$_UpcomingScheduleExerciseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? minutes,
      String? image,
      DateTime? endAt,
      DateTime? startAt,
      List<Exercise>? exercises,
      String title,
      String description});
}

/// @nodoc
class __$$_UpcomingScheduleExerciseCopyWithImpl<$Res>
    extends _$UpcomingScheduleExerciseCopyWithImpl<$Res,
        _$_UpcomingScheduleExercise>
    implements _$$_UpcomingScheduleExerciseCopyWith<$Res> {
  __$$_UpcomingScheduleExerciseCopyWithImpl(_$_UpcomingScheduleExercise _value,
      $Res Function(_$_UpcomingScheduleExercise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = freezed,
    Object? image = freezed,
    Object? endAt = freezed,
    Object? startAt = freezed,
    Object? exercises = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_UpcomingScheduleExercise(
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercises: freezed == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcomingScheduleExercise implements _UpcomingScheduleExercise {
  const _$_UpcomingScheduleExercise(
      {this.minutes,
      this.image,
      this.endAt,
      this.startAt,
      final List<Exercise>? exercises,
      required this.title,
      required this.description})
      : _exercises = exercises;

  factory _$_UpcomingScheduleExercise.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingScheduleExerciseFromJson(json);

  @override
  final int? minutes;
  @override
  final String? image;
  @override
  final DateTime? endAt;
  @override
  final DateTime? startAt;
  final List<Exercise>? _exercises;
  @override
  List<Exercise>? get exercises {
    final value = _exercises;
    if (value == null) return null;
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'UpcomingScheduleExercise(minutes: $minutes, image: $image, endAt: $endAt, startAt: $startAt, exercises: $exercises, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingScheduleExercise &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minutes, image, endAt, startAt,
      const DeepCollectionEquality().hash(_exercises), title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpcomingScheduleExerciseCopyWith<_$_UpcomingScheduleExercise>
      get copyWith => __$$_UpcomingScheduleExerciseCopyWithImpl<
          _$_UpcomingScheduleExercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcomingScheduleExerciseToJson(
      this,
    );
  }
}

abstract class _UpcomingScheduleExercise implements UpcomingScheduleExercise {
  const factory _UpcomingScheduleExercise(
      {final int? minutes,
      final String? image,
      final DateTime? endAt,
      final DateTime? startAt,
      final List<Exercise>? exercises,
      required final String title,
      required final String description}) = _$_UpcomingScheduleExercise;

  factory _UpcomingScheduleExercise.fromJson(Map<String, dynamic> json) =
      _$_UpcomingScheduleExercise.fromJson;

  @override
  int? get minutes;
  @override
  String? get image;
  @override
  DateTime? get endAt;
  @override
  DateTime? get startAt;
  @override
  List<Exercise>? get exercises;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingScheduleExerciseCopyWith<_$_UpcomingScheduleExercise>
      get copyWith => throw _privateConstructorUsedError;
}
