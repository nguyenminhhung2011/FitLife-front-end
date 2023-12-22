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
  UpComingSession? get upComingSession => throw _privateConstructorUsedError;

  /// Is loading upcoming schedule exercise finish or not
  bool get isLoadingUpcomingScheduleExercise =>
      throw _privateConstructorUsedError;
  bool get isLoadingTopNews => throw _privateConstructorUsedError;
  List<NewsHealth>? get news => throw _privateConstructorUsedError;

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
      {UpComingSession? upComingSession,
      bool isLoadingUpcomingScheduleExercise,
      bool isLoadingTopNews,
      List<NewsHealth>? news});

  $UpComingSessionCopyWith<$Res>? get upComingSession;
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
    Object? upComingSession = freezed,
    Object? isLoadingUpcomingScheduleExercise = null,
    Object? isLoadingTopNews = null,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      upComingSession: freezed == upComingSession
          ? _value.upComingSession
          : upComingSession // ignore: cast_nullable_to_non_nullable
              as UpComingSession?,
      isLoadingUpcomingScheduleExercise: null ==
              isLoadingUpcomingScheduleExercise
          ? _value.isLoadingUpcomingScheduleExercise
          : isLoadingUpcomingScheduleExercise // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTopNews: null == isLoadingTopNews
          ? _value.isLoadingTopNews
          : isLoadingTopNews // ignore: cast_nullable_to_non_nullable
              as bool,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsHealth>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpComingSessionCopyWith<$Res>? get upComingSession {
    if (_value.upComingSession == null) {
      return null;
    }

    return $UpComingSessionCopyWith<$Res>(_value.upComingSession!, (value) {
      return _then(_value.copyWith(upComingSession: value) as $Val);
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
      {UpComingSession? upComingSession,
      bool isLoadingUpcomingScheduleExercise,
      bool isLoadingTopNews,
      List<NewsHealth>? news});

  @override
  $UpComingSessionCopyWith<$Res>? get upComingSession;
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
    Object? upComingSession = freezed,
    Object? isLoadingUpcomingScheduleExercise = null,
    Object? isLoadingTopNews = null,
    Object? news = freezed,
  }) {
    return _then(_$_OverviewData(
      upComingSession: freezed == upComingSession
          ? _value.upComingSession
          : upComingSession // ignore: cast_nullable_to_non_nullable
              as UpComingSession?,
      isLoadingUpcomingScheduleExercise: null ==
              isLoadingUpcomingScheduleExercise
          ? _value.isLoadingUpcomingScheduleExercise
          : isLoadingUpcomingScheduleExercise // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTopNews: null == isLoadingTopNews
          ? _value.isLoadingTopNews
          : isLoadingTopNews // ignore: cast_nullable_to_non_nullable
              as bool,
      news: freezed == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsHealth>?,
    ));
  }
}

/// @nodoc

class _$_OverviewData implements _OverviewData {
  const _$_OverviewData(
      {this.upComingSession,
      this.isLoadingUpcomingScheduleExercise = false,
      this.isLoadingTopNews = false,
      final List<NewsHealth>? news})
      : _news = news;

  /// Upcoming schedule exercise
  @override
  final UpComingSession? upComingSession;

  /// Is loading upcoming schedule exercise finish or not
  @override
  @JsonKey()
  final bool isLoadingUpcomingScheduleExercise;
  @override
  @JsonKey()
  final bool isLoadingTopNews;
  final List<NewsHealth>? _news;
  @override
  List<NewsHealth>? get news {
    final value = _news;
    if (value == null) return null;
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OverviewData(upComingSession: $upComingSession, isLoadingUpcomingScheduleExercise: $isLoadingUpcomingScheduleExercise, isLoadingTopNews: $isLoadingTopNews, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverviewData &&
            (identical(other.upComingSession, upComingSession) ||
                other.upComingSession == upComingSession) &&
            (identical(other.isLoadingUpcomingScheduleExercise,
                    isLoadingUpcomingScheduleExercise) ||
                other.isLoadingUpcomingScheduleExercise ==
                    isLoadingUpcomingScheduleExercise) &&
            (identical(other.isLoadingTopNews, isLoadingTopNews) ||
                other.isLoadingTopNews == isLoadingTopNews) &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      upComingSession,
      isLoadingUpcomingScheduleExercise,
      isLoadingTopNews,
      const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverviewDataCopyWith<_$_OverviewData> get copyWith =>
      __$$_OverviewDataCopyWithImpl<_$_OverviewData>(this, _$identity);
}

abstract class _OverviewData implements OverviewData {
  const factory _OverviewData(
      {final UpComingSession? upComingSession,
      final bool isLoadingUpcomingScheduleExercise,
      final bool isLoadingTopNews,
      final List<NewsHealth>? news}) = _$_OverviewData;

  @override

  /// Upcoming schedule exercise
  UpComingSession? get upComingSession;
  @override

  /// Is loading upcoming schedule exercise finish or not
  bool get isLoadingUpcomingScheduleExercise;
  @override
  bool get isLoadingTopNews;
  @override
  List<NewsHealth>? get news;
  @override
  @JsonKey(ignore: true)
  _$$_OverviewDataCopyWith<_$_OverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}
