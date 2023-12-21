// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExercisePagination _$ExercisePaginationFromJson(Map<String, dynamic> json) {
  return _ExercisePagination.fromJson(json);
}

/// @nodoc
mixin _$ExercisePagination {
  List<ExerciseModel>? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExercisePaginationCopyWith<ExercisePagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisePaginationCopyWith<$Res> {
  factory $ExercisePaginationCopyWith(
          ExercisePagination value, $Res Function(ExercisePagination) then) =
      _$ExercisePaginationCopyWithImpl<$Res, ExercisePagination>;
  @useResult
  $Res call({List<ExerciseModel>? content});
}

/// @nodoc
class _$ExercisePaginationCopyWithImpl<$Res, $Val extends ExercisePagination>
    implements $ExercisePaginationCopyWith<$Res> {
  _$ExercisePaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExercisePaginationCopyWith<$Res>
    implements $ExercisePaginationCopyWith<$Res> {
  factory _$$_ExercisePaginationCopyWith(_$_ExercisePagination value,
          $Res Function(_$_ExercisePagination) then) =
      __$$_ExercisePaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExerciseModel>? content});
}

/// @nodoc
class __$$_ExercisePaginationCopyWithImpl<$Res>
    extends _$ExercisePaginationCopyWithImpl<$Res, _$_ExercisePagination>
    implements _$$_ExercisePaginationCopyWith<$Res> {
  __$$_ExercisePaginationCopyWithImpl(
      _$_ExercisePagination _value, $Res Function(_$_ExercisePagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$_ExercisePagination(
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ExerciseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExercisePagination implements _ExercisePagination {
  const _$_ExercisePagination({final List<ExerciseModel>? content})
      : _content = content;

  factory _$_ExercisePagination.fromJson(Map<String, dynamic> json) =>
      _$$_ExercisePaginationFromJson(json);

  final List<ExerciseModel>? _content;
  @override
  List<ExerciseModel>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExercisePagination(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExercisePagination &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExercisePaginationCopyWith<_$_ExercisePagination> get copyWith =>
      __$$_ExercisePaginationCopyWithImpl<_$_ExercisePagination>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExercisePaginationToJson(
      this,
    );
  }
}

abstract class _ExercisePagination implements ExercisePagination {
  const factory _ExercisePagination({final List<ExerciseModel>? content}) =
      _$_ExercisePagination;

  factory _ExercisePagination.fromJson(Map<String, dynamic> json) =
      _$_ExercisePagination.fromJson;

  @override
  List<ExerciseModel>? get content;
  @override
  @JsonKey(ignore: true)
  _$$_ExercisePaginationCopyWith<_$_ExercisePagination> get copyWith =>
      throw _privateConstructorUsedError;
}
