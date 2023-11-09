// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fit_overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FitOverViewData {
  List<DateTime> get rangeDate => throw _privateConstructorUsedError;

  /// List upcoming workout
  List<UpcomingWorkout>? get upcomingWorkouts =>
      throw _privateConstructorUsedError;

  /// check loading upcoming workout status
  bool get isLoadingUpcomingWorkout => throw _privateConstructorUsedError;

  /// List exercise category
  List<ExerciseCategory>? get exerciseCategories =>
      throw _privateConstructorUsedError;

  /// check loading exercise category status
  bool get isLoadingExerciseCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FitOverViewDataCopyWith<FitOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitOverViewDataCopyWith<$Res> {
  factory $FitOverViewDataCopyWith(
          FitOverViewData value, $Res Function(FitOverViewData) then) =
      _$FitOverViewDataCopyWithImpl<$Res, FitOverViewData>;
  @useResult
  $Res call(
      {List<DateTime> rangeDate,
      List<UpcomingWorkout>? upcomingWorkouts,
      bool isLoadingUpcomingWorkout,
      List<ExerciseCategory>? exerciseCategories,
      bool isLoadingExerciseCategory});
}

/// @nodoc
class _$FitOverViewDataCopyWithImpl<$Res, $Val extends FitOverViewData>
    implements $FitOverViewDataCopyWith<$Res> {
  _$FitOverViewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeDate = null,
    Object? upcomingWorkouts = freezed,
    Object? isLoadingUpcomingWorkout = null,
    Object? exerciseCategories = freezed,
    Object? isLoadingExerciseCategory = null,
  }) {
    return _then(_value.copyWith(
      rangeDate: null == rangeDate
          ? _value.rangeDate
          : rangeDate // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      upcomingWorkouts: freezed == upcomingWorkouts
          ? _value.upcomingWorkouts
          : upcomingWorkouts // ignore: cast_nullable_to_non_nullable
              as List<UpcomingWorkout>?,
      isLoadingUpcomingWorkout: null == isLoadingUpcomingWorkout
          ? _value.isLoadingUpcomingWorkout
          : isLoadingUpcomingWorkout // ignore: cast_nullable_to_non_nullable
              as bool,
      exerciseCategories: freezed == exerciseCategories
          ? _value.exerciseCategories
          : exerciseCategories // ignore: cast_nullable_to_non_nullable
              as List<ExerciseCategory>?,
      isLoadingExerciseCategory: null == isLoadingExerciseCategory
          ? _value.isLoadingExerciseCategory
          : isLoadingExerciseCategory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FitOverViewDataCopyWith<$Res>
    implements $FitOverViewDataCopyWith<$Res> {
  factory _$$_FitOverViewDataCopyWith(
          _$_FitOverViewData value, $Res Function(_$_FitOverViewData) then) =
      __$$_FitOverViewDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime> rangeDate,
      List<UpcomingWorkout>? upcomingWorkouts,
      bool isLoadingUpcomingWorkout,
      List<ExerciseCategory>? exerciseCategories,
      bool isLoadingExerciseCategory});
}

/// @nodoc
class __$$_FitOverViewDataCopyWithImpl<$Res>
    extends _$FitOverViewDataCopyWithImpl<$Res, _$_FitOverViewData>
    implements _$$_FitOverViewDataCopyWith<$Res> {
  __$$_FitOverViewDataCopyWithImpl(
      _$_FitOverViewData _value, $Res Function(_$_FitOverViewData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeDate = null,
    Object? upcomingWorkouts = freezed,
    Object? isLoadingUpcomingWorkout = null,
    Object? exerciseCategories = freezed,
    Object? isLoadingExerciseCategory = null,
  }) {
    return _then(_$_FitOverViewData(
      rangeDate: null == rangeDate
          ? _value._rangeDate
          : rangeDate // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      upcomingWorkouts: freezed == upcomingWorkouts
          ? _value._upcomingWorkouts
          : upcomingWorkouts // ignore: cast_nullable_to_non_nullable
              as List<UpcomingWorkout>?,
      isLoadingUpcomingWorkout: null == isLoadingUpcomingWorkout
          ? _value.isLoadingUpcomingWorkout
          : isLoadingUpcomingWorkout // ignore: cast_nullable_to_non_nullable
              as bool,
      exerciseCategories: freezed == exerciseCategories
          ? _value._exerciseCategories
          : exerciseCategories // ignore: cast_nullable_to_non_nullable
              as List<ExerciseCategory>?,
      isLoadingExerciseCategory: null == isLoadingExerciseCategory
          ? _value.isLoadingExerciseCategory
          : isLoadingExerciseCategory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FitOverViewData implements _FitOverViewData {
  const _$_FitOverViewData(
      {final List<DateTime> rangeDate = const [],
      final List<UpcomingWorkout>? upcomingWorkouts,
      this.isLoadingUpcomingWorkout = false,
      final List<ExerciseCategory>? exerciseCategories,
      this.isLoadingExerciseCategory = false})
      : _rangeDate = rangeDate,
        _upcomingWorkouts = upcomingWorkouts,
        _exerciseCategories = exerciseCategories;

  final List<DateTime> _rangeDate;
  @override
  @JsonKey()
  List<DateTime> get rangeDate {
    if (_rangeDate is EqualUnmodifiableListView) return _rangeDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rangeDate);
  }

  /// List upcoming workout
  final List<UpcomingWorkout>? _upcomingWorkouts;

  /// List upcoming workout
  @override
  List<UpcomingWorkout>? get upcomingWorkouts {
    final value = _upcomingWorkouts;
    if (value == null) return null;
    if (_upcomingWorkouts is EqualUnmodifiableListView)
      return _upcomingWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// check loading upcoming workout status
  @override
  @JsonKey()
  final bool isLoadingUpcomingWorkout;

  /// List exercise category
  final List<ExerciseCategory>? _exerciseCategories;

  /// List exercise category
  @override
  List<ExerciseCategory>? get exerciseCategories {
    final value = _exerciseCategories;
    if (value == null) return null;
    if (_exerciseCategories is EqualUnmodifiableListView)
      return _exerciseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// check loading exercise category status
  @override
  @JsonKey()
  final bool isLoadingExerciseCategory;

  @override
  String toString() {
    return 'FitOverViewData(rangeDate: $rangeDate, upcomingWorkouts: $upcomingWorkouts, isLoadingUpcomingWorkout: $isLoadingUpcomingWorkout, exerciseCategories: $exerciseCategories, isLoadingExerciseCategory: $isLoadingExerciseCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FitOverViewData &&
            const DeepCollectionEquality()
                .equals(other._rangeDate, _rangeDate) &&
            const DeepCollectionEquality()
                .equals(other._upcomingWorkouts, _upcomingWorkouts) &&
            (identical(
                    other.isLoadingUpcomingWorkout, isLoadingUpcomingWorkout) ||
                other.isLoadingUpcomingWorkout == isLoadingUpcomingWorkout) &&
            const DeepCollectionEquality()
                .equals(other._exerciseCategories, _exerciseCategories) &&
            (identical(other.isLoadingExerciseCategory,
                    isLoadingExerciseCategory) ||
                other.isLoadingExerciseCategory == isLoadingExerciseCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rangeDate),
      const DeepCollectionEquality().hash(_upcomingWorkouts),
      isLoadingUpcomingWorkout,
      const DeepCollectionEquality().hash(_exerciseCategories),
      isLoadingExerciseCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FitOverViewDataCopyWith<_$_FitOverViewData> get copyWith =>
      __$$_FitOverViewDataCopyWithImpl<_$_FitOverViewData>(this, _$identity);
}

abstract class _FitOverViewData implements FitOverViewData {
  const factory _FitOverViewData(
      {final List<DateTime> rangeDate,
      final List<UpcomingWorkout>? upcomingWorkouts,
      final bool isLoadingUpcomingWorkout,
      final List<ExerciseCategory>? exerciseCategories,
      final bool isLoadingExerciseCategory}) = _$_FitOverViewData;

  @override
  List<DateTime> get rangeDate;
  @override

  /// List upcoming workout
  List<UpcomingWorkout>? get upcomingWorkouts;
  @override

  /// check loading upcoming workout status
  bool get isLoadingUpcomingWorkout;
  @override

  /// List exercise category
  List<ExerciseCategory>? get exerciseCategories;
  @override

  /// check loading exercise category status
  bool get isLoadingExerciseCategory;
  @override
  @JsonKey(ignore: true)
  _$$_FitOverViewDataCopyWith<_$_FitOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}
