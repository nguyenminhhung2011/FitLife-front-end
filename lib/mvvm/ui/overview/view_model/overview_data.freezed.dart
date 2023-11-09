// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewData {
  /// Upcoming schedule exercise
  UpcomingScheduleExercise? get upcomingScheduleExercise =>
      throw _privateConstructorUsedError;

  /// Is loading upcoming schedule exercise finish or not
  bool get isLoadingUpcomingScheduleExercise =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewDataCopyWith<OverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewDataCopyWith<$Res> {
  factory $OverviewDataCopyWith(
          OverviewData value, $Res Function(OverviewData) then) =
      _$OverviewDataCopyWithImpl<$Res, OverviewData>;
  @useResult
  $Res call(
      {UpcomingScheduleExercise? upcomingScheduleExercise,
      bool isLoadingUpcomingScheduleExercise});

  $UpcomingScheduleExerciseCopyWith<$Res>? get upcomingScheduleExercise;
}

/// @nodoc
class _$OverviewDataCopyWithImpl<$Res, $Val extends OverviewData>
    implements $OverviewDataCopyWith<$Res> {
  _$OverviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingScheduleExercise = freezed,
    Object? isLoadingUpcomingScheduleExercise = null,
  }) {
    return _then(_value.copyWith(
      upcomingScheduleExercise: freezed == upcomingScheduleExercise
          ? _value.upcomingScheduleExercise
          : upcomingScheduleExercise // ignore: cast_nullable_to_non_nullable
              as UpcomingScheduleExercise?,
      isLoadingUpcomingScheduleExercise: null ==
              isLoadingUpcomingScheduleExercise
          ? _value.isLoadingUpcomingScheduleExercise
          : isLoadingUpcomingScheduleExercise // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpcomingScheduleExerciseCopyWith<$Res>? get upcomingScheduleExercise {
    if (_value.upcomingScheduleExercise == null) {
      return null;
    }

    return $UpcomingScheduleExerciseCopyWith<$Res>(
        _value.upcomingScheduleExercise!, (value) {
      return _then(_value.copyWith(upcomingScheduleExercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OverviewDataCopyWith<$Res>
    implements $OverviewDataCopyWith<$Res> {
  factory _$$_OverviewDataCopyWith(
          _$_OverviewData value, $Res Function(_$_OverviewData) then) =
      __$$_OverviewDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UpcomingScheduleExercise? upcomingScheduleExercise,
      bool isLoadingUpcomingScheduleExercise});

  @override
  $UpcomingScheduleExerciseCopyWith<$Res>? get upcomingScheduleExercise;
}

/// @nodoc
class __$$_OverviewDataCopyWithImpl<$Res>
    extends _$OverviewDataCopyWithImpl<$Res, _$_OverviewData>
    implements _$$_OverviewDataCopyWith<$Res> {
  __$$_OverviewDataCopyWithImpl(
      _$_OverviewData _value, $Res Function(_$_OverviewData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingScheduleExercise = freezed,
    Object? isLoadingUpcomingScheduleExercise = null,
  }) {
    return _then(_$_OverviewData(
      upcomingScheduleExercise: freezed == upcomingScheduleExercise
          ? _value.upcomingScheduleExercise
          : upcomingScheduleExercise // ignore: cast_nullable_to_non_nullable
              as UpcomingScheduleExercise?,
      isLoadingUpcomingScheduleExercise: null ==
              isLoadingUpcomingScheduleExercise
          ? _value.isLoadingUpcomingScheduleExercise
          : isLoadingUpcomingScheduleExercise // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OverviewData implements _OverviewData {
  const _$_OverviewData(
      {this.upcomingScheduleExercise,
      this.isLoadingUpcomingScheduleExercise = false});

  /// Upcoming schedule exercise
  @override
  final UpcomingScheduleExercise? upcomingScheduleExercise;

  /// Is loading upcoming schedule exercise finish or not
  @override
  @JsonKey()
  final bool isLoadingUpcomingScheduleExercise;

  @override
  String toString() {
    return 'OverviewData(upcomingScheduleExercise: $upcomingScheduleExercise, isLoadingUpcomingScheduleExercise: $isLoadingUpcomingScheduleExercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverviewData &&
            (identical(
                    other.upcomingScheduleExercise, upcomingScheduleExercise) ||
                other.upcomingScheduleExercise == upcomingScheduleExercise) &&
            (identical(other.isLoadingUpcomingScheduleExercise,
                    isLoadingUpcomingScheduleExercise) ||
                other.isLoadingUpcomingScheduleExercise ==
                    isLoadingUpcomingScheduleExercise));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, upcomingScheduleExercise, isLoadingUpcomingScheduleExercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverviewDataCopyWith<_$_OverviewData> get copyWith =>
      __$$_OverviewDataCopyWithImpl<_$_OverviewData>(this, _$identity);
}

abstract class _OverviewData implements OverviewData {
  const factory _OverviewData(
      {final UpcomingScheduleExercise? upcomingScheduleExercise,
      final bool isLoadingUpcomingScheduleExercise}) = _$_OverviewData;

  @override

  /// Upcoming schedule exercise
  UpcomingScheduleExercise? get upcomingScheduleExercise;
  @override

  /// Is loading upcoming schedule exercise finish or not
  bool get isLoadingUpcomingScheduleExercise;
  @override
  @JsonKey(ignore: true)
  _$$_OverviewDataCopyWith<_$_OverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}
