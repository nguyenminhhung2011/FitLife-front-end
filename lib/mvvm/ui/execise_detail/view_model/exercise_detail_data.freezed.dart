// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseDetailData {
  Exercise? get exercise => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseDetailDataCopyWith<ExerciseDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDetailDataCopyWith<$Res> {
  factory $ExerciseDetailDataCopyWith(
          ExerciseDetailData value, $Res Function(ExerciseDetailData) then) =
      _$ExerciseDetailDataCopyWithImpl<$Res, ExerciseDetailData>;
  @useResult
  $Res call({Exercise? exercise});

  $ExerciseCopyWith<$Res>? get exercise;
}

/// @nodoc
class _$ExerciseDetailDataCopyWithImpl<$Res, $Val extends ExerciseDetailData>
    implements $ExerciseDetailDataCopyWith<$Res> {
  _$ExerciseDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<$Res>? get exercise {
    if (_value.exercise == null) {
      return null;
    }

    return $ExerciseCopyWith<$Res>(_value.exercise!, (value) {
      return _then(_value.copyWith(exercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseDataCopyWith<$Res>
    implements $ExerciseDetailDataCopyWith<$Res> {
  factory _$$_ExerciseDataCopyWith(
          _$_ExerciseData value, $Res Function(_$_ExerciseData) then) =
      __$$_ExerciseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exercise? exercise});

  @override
  $ExerciseCopyWith<$Res>? get exercise;
}

/// @nodoc
class __$$_ExerciseDataCopyWithImpl<$Res>
    extends _$ExerciseDetailDataCopyWithImpl<$Res, _$_ExerciseData>
    implements _$$_ExerciseDataCopyWith<$Res> {
  __$$_ExerciseDataCopyWithImpl(
      _$_ExerciseData _value, $Res Function(_$_ExerciseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = freezed,
  }) {
    return _then(_$_ExerciseData(
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise?,
    ));
  }
}

/// @nodoc

class _$_ExerciseData implements _ExerciseData {
  const _$_ExerciseData({this.exercise});

  @override
  final Exercise? exercise;

  @override
  String toString() {
    return 'ExerciseDetailData(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseData &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseDataCopyWith<_$_ExerciseData> get copyWith =>
      __$$_ExerciseDataCopyWithImpl<_$_ExerciseData>(this, _$identity);
}

abstract class _ExerciseData implements ExerciseDetailData {
  const factory _ExerciseData({final Exercise? exercise}) = _$_ExerciseData;

  @override
  Exercise? get exercise;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseDataCopyWith<_$_ExerciseData> get copyWith =>
      throw _privateConstructorUsedError;
}
