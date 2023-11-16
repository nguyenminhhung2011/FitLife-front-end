// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_exercise_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllExerciseData {
  Pagination<Exercise> get exercises => throw _privateConstructorUsedError;
  String get searchContent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllExerciseDataCopyWith<AllExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllExerciseDataCopyWith<$Res> {
  factory $AllExerciseDataCopyWith(
          AllExerciseData value, $Res Function(AllExerciseData) then) =
      _$AllExerciseDataCopyWithImpl<$Res, AllExerciseData>;
  @useResult
  $Res call({Pagination<Exercise> exercises, String searchContent});

  $PaginationCopyWith<Exercise, $Res> get exercises;
}

/// @nodoc
class _$AllExerciseDataCopyWithImpl<$Res, $Val extends AllExerciseData>
    implements $AllExerciseDataCopyWith<$Res> {
  _$AllExerciseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? searchContent = null,
  }) {
    return _then(_value.copyWith(
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as Pagination<Exercise>,
      searchContent: null == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
abstract class _$$_AllExerciseDataCopyWith<$Res>
    implements $AllExerciseDataCopyWith<$Res> {
  factory _$$_AllExerciseDataCopyWith(
          _$_AllExerciseData value, $Res Function(_$_AllExerciseData) then) =
      __$$_AllExerciseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pagination<Exercise> exercises, String searchContent});

  @override
  $PaginationCopyWith<Exercise, $Res> get exercises;
}

/// @nodoc
class __$$_AllExerciseDataCopyWithImpl<$Res>
    extends _$AllExerciseDataCopyWithImpl<$Res, _$_AllExerciseData>
    implements _$$_AllExerciseDataCopyWith<$Res> {
  __$$_AllExerciseDataCopyWithImpl(
      _$_AllExerciseData _value, $Res Function(_$_AllExerciseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? searchContent = null,
  }) {
    return _then(_$_AllExerciseData(
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as Pagination<Exercise>,
      searchContent: null == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AllExerciseData implements _AllExerciseData {
  const _$_AllExerciseData({required this.exercises, this.searchContent = ""});

  @override
  final Pagination<Exercise> exercises;
  @override
  @JsonKey()
  final String searchContent;

  @override
  String toString() {
    return 'AllExerciseData(exercises: $exercises, searchContent: $searchContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllExerciseData &&
            (identical(other.exercises, exercises) ||
                other.exercises == exercises) &&
            (identical(other.searchContent, searchContent) ||
                other.searchContent == searchContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercises, searchContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllExerciseDataCopyWith<_$_AllExerciseData> get copyWith =>
      __$$_AllExerciseDataCopyWithImpl<_$_AllExerciseData>(this, _$identity);
}

abstract class _AllExerciseData implements AllExerciseData {
  const factory _AllExerciseData(
      {required final Pagination<Exercise> exercises,
      final String searchContent}) = _$_AllExerciseData;

  @override
  Pagination<Exercise> get exercises;
  @override
  String get searchContent;
  @override
  @JsonKey(ignore: true)
  _$$_AllExerciseDataCopyWith<_$_AllExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}
