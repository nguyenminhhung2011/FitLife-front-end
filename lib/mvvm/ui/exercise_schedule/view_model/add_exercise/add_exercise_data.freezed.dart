// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_exercise_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddExerciseData {
  String? get searchContent => throw _privateConstructorUsedError;
  String? get bodyPart => throw _privateConstructorUsedError;
  Exercise? get exerciseChosen => throw _privateConstructorUsedError;
  dynamic get currentTab => throw _privateConstructorUsedError;
  Pagination<Exercise> get exercises => throw _privateConstructorUsedError;
  List<BodyPart> get bodyParts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddExerciseDataCopyWith<AddExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExerciseDataCopyWith<$Res> {
  factory $AddExerciseDataCopyWith(
          AddExerciseData value, $Res Function(AddExerciseData) then) =
      _$AddExerciseDataCopyWithImpl<$Res, AddExerciseData>;
  @useResult
  $Res call(
      {String? searchContent,
      String? bodyPart,
      Exercise? exerciseChosen,
      dynamic currentTab,
      Pagination<Exercise> exercises,
      List<BodyPart> bodyParts});

  $ExerciseCopyWith<$Res>? get exerciseChosen;
  $PaginationCopyWith<Exercise, $Res> get exercises;
}

/// @nodoc
class _$AddExerciseDataCopyWithImpl<$Res, $Val extends AddExerciseData>
    implements $AddExerciseDataCopyWith<$Res> {
  _$AddExerciseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContent = freezed,
    Object? bodyPart = freezed,
    Object? exerciseChosen = freezed,
    Object? currentTab = freezed,
    Object? exercises = null,
    Object? bodyParts = null,
  }) {
    return _then(_value.copyWith(
      searchContent: freezed == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyPart: freezed == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseChosen: freezed == exerciseChosen
          ? _value.exerciseChosen
          : exerciseChosen // ignore: cast_nullable_to_non_nullable
              as Exercise?,
      currentTab: freezed == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as Pagination<Exercise>,
      bodyParts: null == bodyParts
          ? _value.bodyParts
          : bodyParts // ignore: cast_nullable_to_non_nullable
              as List<BodyPart>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<$Res>? get exerciseChosen {
    if (_value.exerciseChosen == null) {
      return null;
    }

    return $ExerciseCopyWith<$Res>(_value.exerciseChosen!, (value) {
      return _then(_value.copyWith(exerciseChosen: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<Exercise, $Res> get exercises {
    return $PaginationCopyWith<Exercise, $Res>(_value.exercises, (value) {
      return _then(_value.copyWith(exercises: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddExerciseDataCopyWith<$Res>
    implements $AddExerciseDataCopyWith<$Res> {
  factory _$$_AddExerciseDataCopyWith(
          _$_AddExerciseData value, $Res Function(_$_AddExerciseData) then) =
      __$$_AddExerciseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchContent,
      String? bodyPart,
      Exercise? exerciseChosen,
      dynamic currentTab,
      Pagination<Exercise> exercises,
      List<BodyPart> bodyParts});

  @override
  $ExerciseCopyWith<$Res>? get exerciseChosen;
  @override
  $PaginationCopyWith<Exercise, $Res> get exercises;
}

/// @nodoc
class __$$_AddExerciseDataCopyWithImpl<$Res>
    extends _$AddExerciseDataCopyWithImpl<$Res, _$_AddExerciseData>
    implements _$$_AddExerciseDataCopyWith<$Res> {
  __$$_AddExerciseDataCopyWithImpl(
      _$_AddExerciseData _value, $Res Function(_$_AddExerciseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContent = freezed,
    Object? bodyPart = freezed,
    Object? exerciseChosen = freezed,
    Object? currentTab = freezed,
    Object? exercises = null,
    Object? bodyParts = null,
  }) {
    return _then(_$_AddExerciseData(
      searchContent: freezed == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String?,
      bodyPart: freezed == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String?,
      exerciseChosen: freezed == exerciseChosen
          ? _value.exerciseChosen
          : exerciseChosen // ignore: cast_nullable_to_non_nullable
              as Exercise?,
      currentTab: freezed == currentTab ? _value.currentTab! : currentTab,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as Pagination<Exercise>,
      bodyParts: null == bodyParts
          ? _value._bodyParts
          : bodyParts // ignore: cast_nullable_to_non_nullable
              as List<BodyPart>,
    ));
  }
}

/// @nodoc

class _$_AddExerciseData implements _AddExerciseData {
  const _$_AddExerciseData(
      {this.searchContent,
      this.bodyPart,
      this.exerciseChosen,
      this.currentTab = 0,
      required this.exercises,
      required final List<BodyPart> bodyParts})
      : _bodyParts = bodyParts;

  @override
  final String? searchContent;
  @override
  final String? bodyPart;
  @override
  final Exercise? exerciseChosen;
  @override
  @JsonKey()
  final dynamic currentTab;
  @override
  final Pagination<Exercise> exercises;
  final List<BodyPart> _bodyParts;
  @override
  List<BodyPart> get bodyParts {
    if (_bodyParts is EqualUnmodifiableListView) return _bodyParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bodyParts);
  }

  @override
  String toString() {
    return 'AddExerciseData(searchContent: $searchContent, bodyPart: $bodyPart, exerciseChosen: $exerciseChosen, currentTab: $currentTab, exercises: $exercises, bodyParts: $bodyParts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddExerciseData &&
            (identical(other.searchContent, searchContent) ||
                other.searchContent == searchContent) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            (identical(other.exerciseChosen, exerciseChosen) ||
                other.exerciseChosen == exerciseChosen) &&
            const DeepCollectionEquality()
                .equals(other.currentTab, currentTab) &&
            (identical(other.exercises, exercises) ||
                other.exercises == exercises) &&
            const DeepCollectionEquality()
                .equals(other._bodyParts, _bodyParts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchContent,
      bodyPart,
      exerciseChosen,
      const DeepCollectionEquality().hash(currentTab),
      exercises,
      const DeepCollectionEquality().hash(_bodyParts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddExerciseDataCopyWith<_$_AddExerciseData> get copyWith =>
      __$$_AddExerciseDataCopyWithImpl<_$_AddExerciseData>(this, _$identity);
}

abstract class _AddExerciseData implements AddExerciseData {
  const factory _AddExerciseData(
      {final String? searchContent,
      final String? bodyPart,
      final Exercise? exerciseChosen,
      final dynamic currentTab,
      required final Pagination<Exercise> exercises,
      required final List<BodyPart> bodyParts}) = _$_AddExerciseData;

  @override
  String? get searchContent;
  @override
  String? get bodyPart;
  @override
  Exercise? get exerciseChosen;
  @override
  dynamic get currentTab;
  @override
  Pagination<Exercise> get exercises;
  @override
  List<BodyPart> get bodyParts;
  @override
  @JsonKey(ignore: true)
  _$$_AddExerciseDataCopyWith<_$_AddExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}
