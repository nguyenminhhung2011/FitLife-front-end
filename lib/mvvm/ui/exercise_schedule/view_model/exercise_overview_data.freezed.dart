// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseOverviewData {
  Session? get sessionPlan => throw _privateConstructorUsedError;
  List<Exercise>? get exercises => throw _privateConstructorUsedError;
  bool get isLoadingExercise => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  List<String>? get equipment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseOverviewDataCopyWith<ExerciseOverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseOverviewDataCopyWith<$Res> {
  factory $ExerciseOverviewDataCopyWith(ExerciseOverviewData value,
          $Res Function(ExerciseOverviewData) then) =
      _$ExerciseOverviewDataCopyWithImpl<$Res, ExerciseOverviewData>;
  @useResult
  $Res call(
      {Session? sessionPlan,
      List<Exercise>? exercises,
      bool isLoadingExercise,
      int page,
      bool isLastPage,
      List<String>? equipment});

  $SessionCopyWith<$Res>? get sessionPlan;
}

/// @nodoc
class _$ExerciseOverviewDataCopyWithImpl<$Res,
        $Val extends ExerciseOverviewData>
    implements $ExerciseOverviewDataCopyWith<$Res> {
  _$ExerciseOverviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionPlan = freezed,
    Object? exercises = freezed,
    Object? isLoadingExercise = null,
    Object? page = null,
    Object? isLastPage = null,
    Object? equipment = freezed,
  }) {
    return _then(_value.copyWith(
      sessionPlan: freezed == sessionPlan
          ? _value.sessionPlan
          : sessionPlan // ignore: cast_nullable_to_non_nullable
              as Session?,
      exercises: freezed == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      isLoadingExercise: null == isLoadingExercise
          ? _value.isLoadingExercise
          : isLoadingExercise // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      equipment: freezed == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res>? get sessionPlan {
    if (_value.sessionPlan == null) {
      return null;
    }

    return $SessionCopyWith<$Res>(_value.sessionPlan!, (value) {
      return _then(_value.copyWith(sessionPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseOverviewDataCopyWith<$Res>
    implements $ExerciseOverviewDataCopyWith<$Res> {
  factory _$$_ExerciseOverviewDataCopyWith(_$_ExerciseOverviewData value,
          $Res Function(_$_ExerciseOverviewData) then) =
      __$$_ExerciseOverviewDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Session? sessionPlan,
      List<Exercise>? exercises,
      bool isLoadingExercise,
      int page,
      bool isLastPage,
      List<String>? equipment});

  @override
  $SessionCopyWith<$Res>? get sessionPlan;
}

/// @nodoc
class __$$_ExerciseOverviewDataCopyWithImpl<$Res>
    extends _$ExerciseOverviewDataCopyWithImpl<$Res, _$_ExerciseOverviewData>
    implements _$$_ExerciseOverviewDataCopyWith<$Res> {
  __$$_ExerciseOverviewDataCopyWithImpl(_$_ExerciseOverviewData _value,
      $Res Function(_$_ExerciseOverviewData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionPlan = freezed,
    Object? exercises = freezed,
    Object? isLoadingExercise = null,
    Object? page = null,
    Object? isLastPage = null,
    Object? equipment = freezed,
  }) {
    return _then(_$_ExerciseOverviewData(
      sessionPlan: freezed == sessionPlan
          ? _value.sessionPlan
          : sessionPlan // ignore: cast_nullable_to_non_nullable
              as Session?,
      exercises: freezed == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      isLoadingExercise: null == isLoadingExercise
          ? _value.isLoadingExercise
          : isLoadingExercise // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      equipment: freezed == equipment
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_ExerciseOverviewData implements _ExerciseOverviewData {
  const _$_ExerciseOverviewData(
      {this.sessionPlan,
      final List<Exercise>? exercises,
      this.isLoadingExercise = false,
      this.page = 0,
      this.isLastPage = false,
      final List<String>? equipment})
      : _exercises = exercises,
        _equipment = equipment;

  @override
  final Session? sessionPlan;
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
  @JsonKey()
  final bool isLoadingExercise;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool isLastPage;
  final List<String>? _equipment;
  @override
  List<String>? get equipment {
    final value = _equipment;
    if (value == null) return null;
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExerciseOverviewData(sessionPlan: $sessionPlan, exercises: $exercises, isLoadingExercise: $isLoadingExercise, page: $page, isLastPage: $isLastPage, equipment: $equipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseOverviewData &&
            (identical(other.sessionPlan, sessionPlan) ||
                other.sessionPlan == sessionPlan) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.isLoadingExercise, isLoadingExercise) ||
                other.isLoadingExercise == isLoadingExercise) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sessionPlan,
      const DeepCollectionEquality().hash(_exercises),
      isLoadingExercise,
      page,
      isLastPage,
      const DeepCollectionEquality().hash(_equipment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseOverviewDataCopyWith<_$_ExerciseOverviewData> get copyWith =>
      __$$_ExerciseOverviewDataCopyWithImpl<_$_ExerciseOverviewData>(
          this, _$identity);
}

abstract class _ExerciseOverviewData implements ExerciseOverviewData {
  const factory _ExerciseOverviewData(
      {final Session? sessionPlan,
      final List<Exercise>? exercises,
      final bool isLoadingExercise,
      final int page,
      final bool isLastPage,
      final List<String>? equipment}) = _$_ExerciseOverviewData;

  @override
  Session? get sessionPlan;
  @override
  List<Exercise>? get exercises;
  @override
  bool get isLoadingExercise;
  @override
  int get page;
  @override
  bool get isLastPage;
  @override
  List<String>? get equipment;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseOverviewDataCopyWith<_$_ExerciseOverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}
