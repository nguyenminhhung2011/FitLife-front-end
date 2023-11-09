// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExerciseCategory _$ExerciseCategoryFromJson(Map<String, dynamic> json) {
  return _ExerciseCategory.fromJson(json);
}

/// @nodoc
mixin _$ExerciseCategory {
  String get header => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get exCountable => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCategoryCopyWith<ExerciseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCategoryCopyWith<$Res> {
  factory $ExerciseCategoryCopyWith(
          ExerciseCategory value, $Res Function(ExerciseCategory) then) =
      _$ExerciseCategoryCopyWithImpl<$Res, ExerciseCategory>;
  @useResult
  $Res call(
      {String header,
      String? description,
      int exCountable,
      String level,
      String image});
}

/// @nodoc
class _$ExerciseCategoryCopyWithImpl<$Res, $Val extends ExerciseCategory>
    implements $ExerciseCategoryCopyWith<$Res> {
  _$ExerciseCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? description = freezed,
    Object? exCountable = null,
    Object? level = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      exCountable: null == exCountable
          ? _value.exCountable
          : exCountable // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseCategoryCopyWith<$Res>
    implements $ExerciseCategoryCopyWith<$Res> {
  factory _$$_ExerciseCategoryCopyWith(
          _$_ExerciseCategory value, $Res Function(_$_ExerciseCategory) then) =
      __$$_ExerciseCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String header,
      String? description,
      int exCountable,
      String level,
      String image});
}

/// @nodoc
class __$$_ExerciseCategoryCopyWithImpl<$Res>
    extends _$ExerciseCategoryCopyWithImpl<$Res, _$_ExerciseCategory>
    implements _$$_ExerciseCategoryCopyWith<$Res> {
  __$$_ExerciseCategoryCopyWithImpl(
      _$_ExerciseCategory _value, $Res Function(_$_ExerciseCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? description = freezed,
    Object? exCountable = null,
    Object? level = null,
    Object? image = null,
  }) {
    return _then(_$_ExerciseCategory(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      exCountable: null == exCountable
          ? _value.exCountable
          : exCountable // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseCategory implements _ExerciseCategory {
  const _$_ExerciseCategory(
      {required this.header,
      this.description,
      required this.exCountable,
      required this.level,
      required this.image});

  factory _$_ExerciseCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ExerciseCategoryFromJson(json);

  @override
  final String header;
  @override
  final String? description;
  @override
  final int exCountable;
  @override
  final String level;
  @override
  final String image;

  @override
  String toString() {
    return 'ExerciseCategory(header: $header, description: $description, exCountable: $exCountable, level: $level, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseCategory &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.exCountable, exCountable) ||
                other.exCountable == exCountable) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, header, description, exCountable, level, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseCategoryCopyWith<_$_ExerciseCategory> get copyWith =>
      __$$_ExerciseCategoryCopyWithImpl<_$_ExerciseCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExerciseCategoryToJson(
      this,
    );
  }
}

abstract class _ExerciseCategory implements ExerciseCategory {
  const factory _ExerciseCategory(
      {required final String header,
      final String? description,
      required final int exCountable,
      required final String level,
      required final String image}) = _$_ExerciseCategory;

  factory _ExerciseCategory.fromJson(Map<String, dynamic> json) =
      _$_ExerciseCategory.fromJson;

  @override
  String get header;
  @override
  String? get description;
  @override
  int get exCountable;
  @override
  String get level;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseCategoryCopyWith<_$_ExerciseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
