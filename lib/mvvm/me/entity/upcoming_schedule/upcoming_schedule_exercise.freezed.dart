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
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get endAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  List<Exercise>? get exercises => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

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
      {DateTime? startAt,
      DateTime? endAt,
      String title,
      String description,
      int? minutes,
      List<Exercise>? exercises,
      String? image});
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
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? title = null,
    Object? description = null,
    Object? minutes = freezed,
    Object? exercises = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      exercises: freezed == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {DateTime? startAt,
      DateTime? endAt,
      String title,
      String description,
      int? minutes,
      List<Exercise>? exercises,
      String? image});
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
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? title = null,
    Object? description = null,
    Object? minutes = freezed,
    Object? exercises = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_UpcomingScheduleExercise(
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      exercises: freezed == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcomingScheduleExercise implements _UpcomingScheduleExercise {
  const _$_UpcomingScheduleExercise(
      {this.startAt,
      this.endAt,
      required this.title,
      required this.description,
      this.minutes,
      final List<Exercise>? exercises,
      this.image})
      : _exercises = exercises;

  factory _$_UpcomingScheduleExercise.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingScheduleExerciseFromJson(json);

  @override
  final DateTime? startAt;
  @override
  final DateTime? endAt;
  @override
  final String title;
  @override
  final String description;
  @override
  final int? minutes;
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
  final String? image;

  @override
  String toString() {
    return 'UpcomingScheduleExercise(startAt: $startAt, endAt: $endAt, title: $title, description: $description, minutes: $minutes, exercises: $exercises, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingScheduleExercise &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      startAt,
      endAt,
      title,
      description,
      minutes,
      const DeepCollectionEquality().hash(_exercises),
      image);

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
      {final DateTime? startAt,
      final DateTime? endAt,
      required final String title,
      required final String description,
      final int? minutes,
      final List<Exercise>? exercises,
      final String? image}) = _$_UpcomingScheduleExercise;

  factory _UpcomingScheduleExercise.fromJson(Map<String, dynamic> json) =
      _$_UpcomingScheduleExercise.fromJson;

  @override
  DateTime? get startAt;
  @override
  DateTime? get endAt;
  @override
  String get title;
  @override
  String get description;
  @override
  int? get minutes;
  @override
  List<Exercise>? get exercises;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingScheduleExerciseCopyWith<_$_UpcomingScheduleExercise>
      get copyWith => throw _privateConstructorUsedError;
}
