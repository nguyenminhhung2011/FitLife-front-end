// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_exercise_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupExerciseData {
  List<ExerciseCategory> get exercises => throw _privateConstructorUsedError;
  bool get isGetExerciseLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupExerciseDataCopyWith<GroupExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupExerciseDataCopyWith<$Res> {
  factory $GroupExerciseDataCopyWith(
          GroupExerciseData value, $Res Function(GroupExerciseData) then) =
      _$GroupExerciseDataCopyWithImpl<$Res, GroupExerciseData>;
  @useResult
  $Res call({List<ExerciseCategory> exercises, bool isGetExerciseLoading});
}

/// @nodoc
class _$GroupExerciseDataCopyWithImpl<$Res, $Val extends GroupExerciseData>
    implements $GroupExerciseDataCopyWith<$Res> {
  _$GroupExerciseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? isGetExerciseLoading = null,
  }) {
    return _then(_value.copyWith(
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseCategory>,
      isGetExerciseLoading: null == isGetExerciseLoading
          ? _value.isGetExerciseLoading
          : isGetExerciseLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupExerciseDataCopyWith<$Res>
    implements $GroupExerciseDataCopyWith<$Res> {
  factory _$$_GroupExerciseDataCopyWith(_$_GroupExerciseData value,
          $Res Function(_$_GroupExerciseData) then) =
      __$$_GroupExerciseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExerciseCategory> exercises, bool isGetExerciseLoading});
}

/// @nodoc
class __$$_GroupExerciseDataCopyWithImpl<$Res>
    extends _$GroupExerciseDataCopyWithImpl<$Res, _$_GroupExerciseData>
    implements _$$_GroupExerciseDataCopyWith<$Res> {
  __$$_GroupExerciseDataCopyWithImpl(
      _$_GroupExerciseData _value, $Res Function(_$_GroupExerciseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? isGetExerciseLoading = null,
  }) {
    return _then(_$_GroupExerciseData(
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseCategory>,
      isGetExerciseLoading: null == isGetExerciseLoading
          ? _value.isGetExerciseLoading
          : isGetExerciseLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupExerciseData implements _GroupExerciseData {
  const _$_GroupExerciseData(
      {required final List<ExerciseCategory> exercises,
      this.isGetExerciseLoading = false})
      : _exercises = exercises;

  final List<ExerciseCategory> _exercises;
  @override
  List<ExerciseCategory> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  @JsonKey()
  final bool isGetExerciseLoading;

  @override
  String toString() {
    return 'GroupExerciseData(exercises: $exercises, isGetExerciseLoading: $isGetExerciseLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupExerciseData &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.isGetExerciseLoading, isGetExerciseLoading) ||
                other.isGetExerciseLoading == isGetExerciseLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_exercises), isGetExerciseLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupExerciseDataCopyWith<_$_GroupExerciseData> get copyWith =>
      __$$_GroupExerciseDataCopyWithImpl<_$_GroupExerciseData>(
          this, _$identity);
}

abstract class _GroupExerciseData implements GroupExerciseData {
  const factory _GroupExerciseData(
      {required final List<ExerciseCategory> exercises,
      final bool isGetExerciseLoading}) = _$_GroupExerciseData;

  @override
  List<ExerciseCategory> get exercises;
  @override
  bool get isGetExerciseLoading;
  @override
  @JsonKey(ignore: true)
  _$$_GroupExerciseDataCopyWith<_$_GroupExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}
