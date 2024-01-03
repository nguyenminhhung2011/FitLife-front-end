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

BodyPart _$BodyPartFromJson(Map<String, dynamic> json) {
  return _BodyPart.fromJson(json);
}

/// @nodoc
mixin _$BodyPart {
  int get id => throw _privateConstructorUsedError;
  String get header => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get exCountable => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyPartCopyWith<BodyPart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyPartCopyWith<$Res> {
  factory $BodyPartCopyWith(BodyPart value, $Res Function(BodyPart) then) =
      _$BodyPartCopyWithImpl<$Res, BodyPart>;
  @useResult
  $Res call(
      {int id,
      String header,
      String? description,
      int exCountable,
      String level,
      String image});
}

/// @nodoc
class _$BodyPartCopyWithImpl<$Res, $Val extends BodyPart>
    implements $BodyPartCopyWith<$Res> {
  _$BodyPartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? header = null,
    Object? description = freezed,
    Object? exCountable = null,
    Object? level = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_BodyPartCopyWith<$Res> implements $BodyPartCopyWith<$Res> {
  factory _$$_BodyPartCopyWith(
          _$_BodyPart value, $Res Function(_$_BodyPart) then) =
      __$$_BodyPartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String header,
      String? description,
      int exCountable,
      String level,
      String image});
}

/// @nodoc
class __$$_BodyPartCopyWithImpl<$Res>
    extends _$BodyPartCopyWithImpl<$Res, _$_BodyPart>
    implements _$$_BodyPartCopyWith<$Res> {
  __$$_BodyPartCopyWithImpl(
      _$_BodyPart _value, $Res Function(_$_BodyPart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? header = null,
    Object? description = freezed,
    Object? exCountable = null,
    Object? level = null,
    Object? image = null,
  }) {
    return _then(_$_BodyPart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_BodyPart implements _BodyPart {
  const _$_BodyPart(
      {required this.id,
      required this.header,
      this.description,
      required this.exCountable,
      required this.level,
      required this.image});

  factory _$_BodyPart.fromJson(Map<String, dynamic> json) =>
      _$$_BodyPartFromJson(json);

  @override
  final int id;
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
    return 'BodyPart(id: $id, header: $header, description: $description, exCountable: $exCountable, level: $level, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BodyPart &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(
      runtimeType, id, header, description, exCountable, level, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BodyPartCopyWith<_$_BodyPart> get copyWith =>
      __$$_BodyPartCopyWithImpl<_$_BodyPart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BodyPartToJson(
      this,
    );
  }
}

abstract class _BodyPart implements BodyPart {
  const factory _BodyPart(
      {required final int id,
      required final String header,
      final String? description,
      required final int exCountable,
      required final String level,
      required final String image}) = _$_BodyPart;

  factory _BodyPart.fromJson(Map<String, dynamic> json) = _$_BodyPart.fromJson;

  @override
  int get id;
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
  _$$_BodyPartCopyWith<_$_BodyPart> get copyWith =>
      throw _privateConstructorUsedError;
}
