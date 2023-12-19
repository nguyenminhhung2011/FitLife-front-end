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
  List<Session>? get upcomingSessions => throw _privateConstructorUsedError;

  /// List exercise category
  List<BodyPart>? get exerciseCategories => throw _privateConstructorUsedError;
  FitOverview? get overviewData => throw _privateConstructorUsedError;
  bool get isLoadingCaloriesChart => throw _privateConstructorUsedError;

  /// check loading upcoming workout status
  bool get isLoadingUpcomingWorkout => throw _privateConstructorUsedError;

  /// check loading exercise category status
  bool get isLoadingBodyPart => throw _privateConstructorUsedError;
  CaloriesChart get caloriesChart => throw _privateConstructorUsedError;

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
      List<Session>? upcomingSessions,
      List<BodyPart>? exerciseCategories,
      FitOverview? overviewData,
      bool isLoadingCaloriesChart,
      bool isLoadingUpcomingWorkout,
      bool isLoadingBodyPart,
      CaloriesChart caloriesChart});

  $FitOverviewCopyWith<$Res>? get overviewData;
  $CaloriesChartCopyWith<$Res> get caloriesChart;
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
    Object? upcomingSessions = freezed,
    Object? exerciseCategories = freezed,
    Object? overviewData = freezed,
    Object? isLoadingCaloriesChart = null,
    Object? isLoadingUpcomingWorkout = null,
    Object? isLoadingBodyPart = null,
    Object? caloriesChart = null,
  }) {
    return _then(_value.copyWith(
      rangeDate: null == rangeDate
          ? _value.rangeDate
          : rangeDate // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      upcomingSessions: freezed == upcomingSessions
          ? _value.upcomingSessions
          : upcomingSessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
      exerciseCategories: freezed == exerciseCategories
          ? _value.exerciseCategories
          : exerciseCategories // ignore: cast_nullable_to_non_nullable
              as List<BodyPart>?,
      overviewData: freezed == overviewData
          ? _value.overviewData
          : overviewData // ignore: cast_nullable_to_non_nullable
              as FitOverview?,
      isLoadingCaloriesChart: null == isLoadingCaloriesChart
          ? _value.isLoadingCaloriesChart
          : isLoadingCaloriesChart // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUpcomingWorkout: null == isLoadingUpcomingWorkout
          ? _value.isLoadingUpcomingWorkout
          : isLoadingUpcomingWorkout // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingBodyPart: null == isLoadingBodyPart
          ? _value.isLoadingBodyPart
          : isLoadingBodyPart // ignore: cast_nullable_to_non_nullable
              as bool,
      caloriesChart: null == caloriesChart
          ? _value.caloriesChart
          : caloriesChart // ignore: cast_nullable_to_non_nullable
              as CaloriesChart,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FitOverviewCopyWith<$Res>? get overviewData {
    if (_value.overviewData == null) {
      return null;
    }

    return $FitOverviewCopyWith<$Res>(_value.overviewData!, (value) {
      return _then(_value.copyWith(overviewData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CaloriesChartCopyWith<$Res> get caloriesChart {
    return $CaloriesChartCopyWith<$Res>(_value.caloriesChart, (value) {
      return _then(_value.copyWith(caloriesChart: value) as $Val);
    });
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
      List<Session>? upcomingSessions,
      List<BodyPart>? exerciseCategories,
      FitOverview? overviewData,
      bool isLoadingCaloriesChart,
      bool isLoadingUpcomingWorkout,
      bool isLoadingBodyPart,
      CaloriesChart caloriesChart});

  @override
  $FitOverviewCopyWith<$Res>? get overviewData;
  @override
  $CaloriesChartCopyWith<$Res> get caloriesChart;
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
    Object? upcomingSessions = freezed,
    Object? exerciseCategories = freezed,
    Object? overviewData = freezed,
    Object? isLoadingCaloriesChart = null,
    Object? isLoadingUpcomingWorkout = null,
    Object? isLoadingBodyPart = null,
    Object? caloriesChart = null,
  }) {
    return _then(_$_FitOverViewData(
      rangeDate: null == rangeDate
          ? _value._rangeDate
          : rangeDate // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      upcomingSessions: freezed == upcomingSessions
          ? _value._upcomingSessions
          : upcomingSessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
      exerciseCategories: freezed == exerciseCategories
          ? _value._exerciseCategories
          : exerciseCategories // ignore: cast_nullable_to_non_nullable
              as List<BodyPart>?,
      overviewData: freezed == overviewData
          ? _value.overviewData
          : overviewData // ignore: cast_nullable_to_non_nullable
              as FitOverview?,
      isLoadingCaloriesChart: null == isLoadingCaloriesChart
          ? _value.isLoadingCaloriesChart
          : isLoadingCaloriesChart // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUpcomingWorkout: null == isLoadingUpcomingWorkout
          ? _value.isLoadingUpcomingWorkout
          : isLoadingUpcomingWorkout // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingBodyPart: null == isLoadingBodyPart
          ? _value.isLoadingBodyPart
          : isLoadingBodyPart // ignore: cast_nullable_to_non_nullable
              as bool,
      caloriesChart: null == caloriesChart
          ? _value.caloriesChart
          : caloriesChart // ignore: cast_nullable_to_non_nullable
              as CaloriesChart,
    ));
  }
}

/// @nodoc

class _$_FitOverViewData implements _FitOverViewData {
  const _$_FitOverViewData(
      {final List<DateTime> rangeDate = const [],
      final List<Session>? upcomingSessions,
      final List<BodyPart>? exerciseCategories,
      this.overviewData,
      this.isLoadingCaloriesChart = false,
      this.isLoadingUpcomingWorkout = false,
      this.isLoadingBodyPart = false,
      required this.caloriesChart})
      : _rangeDate = rangeDate,
        _upcomingSessions = upcomingSessions,
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
  final List<Session>? _upcomingSessions;

  /// List upcoming workout
  @override
  List<Session>? get upcomingSessions {
    final value = _upcomingSessions;
    if (value == null) return null;
    if (_upcomingSessions is EqualUnmodifiableListView)
      return _upcomingSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// List exercise category
  final List<BodyPart>? _exerciseCategories;

  /// List exercise category
  @override
  List<BodyPart>? get exerciseCategories {
    final value = _exerciseCategories;
    if (value == null) return null;
    if (_exerciseCategories is EqualUnmodifiableListView)
      return _exerciseCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FitOverview? overviewData;
  @override
  @JsonKey()
  final bool isLoadingCaloriesChart;

  /// check loading upcoming workout status
  @override
  @JsonKey()
  final bool isLoadingUpcomingWorkout;

  /// check loading exercise category status
  @override
  @JsonKey()
  final bool isLoadingBodyPart;
  @override
  final CaloriesChart caloriesChart;

  @override
  String toString() {
    return 'FitOverViewData(rangeDate: $rangeDate, upcomingSessions: $upcomingSessions, exerciseCategories: $exerciseCategories, overviewData: $overviewData, isLoadingCaloriesChart: $isLoadingCaloriesChart, isLoadingUpcomingWorkout: $isLoadingUpcomingWorkout, isLoadingBodyPart: $isLoadingBodyPart, caloriesChart: $caloriesChart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FitOverViewData &&
            const DeepCollectionEquality()
                .equals(other._rangeDate, _rangeDate) &&
            const DeepCollectionEquality()
                .equals(other._upcomingSessions, _upcomingSessions) &&
            const DeepCollectionEquality()
                .equals(other._exerciseCategories, _exerciseCategories) &&
            (identical(other.overviewData, overviewData) ||
                other.overviewData == overviewData) &&
            (identical(other.isLoadingCaloriesChart, isLoadingCaloriesChart) ||
                other.isLoadingCaloriesChart == isLoadingCaloriesChart) &&
            (identical(
                    other.isLoadingUpcomingWorkout, isLoadingUpcomingWorkout) ||
                other.isLoadingUpcomingWorkout == isLoadingUpcomingWorkout) &&
            (identical(other.isLoadingBodyPart, isLoadingBodyPart) ||
                other.isLoadingBodyPart == isLoadingBodyPart) &&
            (identical(other.caloriesChart, caloriesChart) ||
                other.caloriesChart == caloriesChart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rangeDate),
      const DeepCollectionEquality().hash(_upcomingSessions),
      const DeepCollectionEquality().hash(_exerciseCategories),
      overviewData,
      isLoadingCaloriesChart,
      isLoadingUpcomingWorkout,
      isLoadingBodyPart,
      caloriesChart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FitOverViewDataCopyWith<_$_FitOverViewData> get copyWith =>
      __$$_FitOverViewDataCopyWithImpl<_$_FitOverViewData>(this, _$identity);
}

abstract class _FitOverViewData implements FitOverViewData {
  const factory _FitOverViewData(
      {final List<DateTime> rangeDate,
      final List<Session>? upcomingSessions,
      final List<BodyPart>? exerciseCategories,
      final FitOverview? overviewData,
      final bool isLoadingCaloriesChart,
      final bool isLoadingUpcomingWorkout,
      final bool isLoadingBodyPart,
      required final CaloriesChart caloriesChart}) = _$_FitOverViewData;

  @override
  List<DateTime> get rangeDate;
  @override

  /// List upcoming workout
  List<Session>? get upcomingSessions;
  @override

  /// List exercise category
  List<BodyPart>? get exerciseCategories;
  @override
  FitOverview? get overviewData;
  @override
  bool get isLoadingCaloriesChart;
  @override

  /// check loading upcoming workout status
  bool get isLoadingUpcomingWorkout;
  @override

  /// check loading exercise category status
  bool get isLoadingBodyPart;
  @override
  CaloriesChart get caloriesChart;
  @override
  @JsonKey(ignore: true)
  _$$_FitOverViewDataCopyWith<_$_FitOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}
