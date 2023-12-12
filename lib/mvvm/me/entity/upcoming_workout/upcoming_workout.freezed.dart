// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingWorkout _$UpcomingWorkoutFromJson(Map<String, dynamic> json) {
  return _UpcomingWorkout.fromJson(json);
}

/// @nodoc
mixin _$UpcomingWorkout {
  DateTime get startTime => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  int? get kCalo => throw _privateConstructorUsedError;
  bool get enableNotification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingWorkoutCopyWith<UpcomingWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingWorkoutCopyWith<$Res> {
  factory $UpcomingWorkoutCopyWith(
          UpcomingWorkout value, $Res Function(UpcomingWorkout) then) =
      _$UpcomingWorkoutCopyWithImpl<$Res, UpcomingWorkout>;
  @useResult
  $Res call(
      {DateTime startTime,
      String title,
      String? description,
      String? image,
      int? minutes,
      int? kCalo,
      bool enableNotification});
}

/// @nodoc
class _$UpcomingWorkoutCopyWithImpl<$Res, $Val extends UpcomingWorkout>
    implements $UpcomingWorkoutCopyWith<$Res> {
  _$UpcomingWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? title = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? minutes = freezed,
    Object? kCalo = freezed,
    Object? enableNotification = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      kCalo: freezed == kCalo
          ? _value.kCalo
          : kCalo // ignore: cast_nullable_to_non_nullable
              as int?,
      enableNotification: null == enableNotification
          ? _value.enableNotification
          : enableNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpcomingWorkoutCopyWith<$Res>
    implements $UpcomingWorkoutCopyWith<$Res> {
  factory _$$_UpcomingWorkoutCopyWith(
          _$_UpcomingWorkout value, $Res Function(_$_UpcomingWorkout) then) =
      __$$_UpcomingWorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      String title,
      String? description,
      String? image,
      int? minutes,
      int? kCalo,
      bool enableNotification});
}

/// @nodoc
class __$$_UpcomingWorkoutCopyWithImpl<$Res>
    extends _$UpcomingWorkoutCopyWithImpl<$Res, _$_UpcomingWorkout>
    implements _$$_UpcomingWorkoutCopyWith<$Res> {
  __$$_UpcomingWorkoutCopyWithImpl(
      _$_UpcomingWorkout _value, $Res Function(_$_UpcomingWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? title = null,
    Object? description = freezed,
    Object? image = freezed,
    Object? minutes = freezed,
    Object? kCalo = freezed,
    Object? enableNotification = null,
  }) {
    return _then(_$_UpcomingWorkout(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      kCalo: freezed == kCalo
          ? _value.kCalo
          : kCalo // ignore: cast_nullable_to_non_nullable
              as int?,
      enableNotification: null == enableNotification
          ? _value.enableNotification
          : enableNotification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcomingWorkout implements _UpcomingWorkout {
  const _$_UpcomingWorkout(
      {required this.startTime,
      required this.title,
      this.description,
      this.image,
      this.minutes,
      this.kCalo,
      this.enableNotification = false});

  factory _$_UpcomingWorkout.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingWorkoutFromJson(json);

  @override
  final DateTime startTime;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final int? minutes;
  @override
  final int? kCalo;
  @override
  @JsonKey()
  final bool enableNotification;

  @override
  String toString() {
    return 'UpcomingWorkout(startTime: $startTime, title: $title, description: $description, image: $image, minutes: $minutes, kCalo: $kCalo, enableNotification: $enableNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingWorkout &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.kCalo, kCalo) || other.kCalo == kCalo) &&
            (identical(other.enableNotification, enableNotification) ||
                other.enableNotification == enableNotification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, title, description,
      image, minutes, kCalo, enableNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpcomingWorkoutCopyWith<_$_UpcomingWorkout> get copyWith =>
      __$$_UpcomingWorkoutCopyWithImpl<_$_UpcomingWorkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcomingWorkoutToJson(
      this,
    );
  }
}

abstract class _UpcomingWorkout implements UpcomingWorkout {
  const factory _UpcomingWorkout(
      {required final DateTime startTime,
      required final String title,
      final String? description,
      final String? image,
      final int? minutes,
      final int? kCalo,
      final bool enableNotification}) = _$_UpcomingWorkout;

  factory _UpcomingWorkout.fromJson(Map<String, dynamic> json) =
      _$_UpcomingWorkout.fromJson;

  @override
  DateTime get startTime;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get image;
  @override
  int? get minutes;
  @override
  int? get kCalo;
  @override
  bool get enableNotification;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingWorkoutCopyWith<_$_UpcomingWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}
