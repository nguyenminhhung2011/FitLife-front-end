// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pt_assistant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PTAssistant {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get createdName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PTAssistantCopyWith<PTAssistant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PTAssistantCopyWith<$Res> {
  factory $PTAssistantCopyWith(
          PTAssistant value, $Res Function(PTAssistant) then) =
      _$PTAssistantCopyWithImpl<$Res, PTAssistant>;
  @useResult
  $Res call({int id, String name, String bio, String createdName});
}

/// @nodoc
class _$PTAssistantCopyWithImpl<$Res, $Val extends PTAssistant>
    implements $PTAssistantCopyWith<$Res> {
  _$PTAssistantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bio = null,
    Object? createdName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      createdName: null == createdName
          ? _value.createdName
          : createdName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PTAssistantCopyWith<$Res>
    implements $PTAssistantCopyWith<$Res> {
  factory _$$_PTAssistantCopyWith(
          _$_PTAssistant value, $Res Function(_$_PTAssistant) then) =
      __$$_PTAssistantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String bio, String createdName});
}

/// @nodoc
class __$$_PTAssistantCopyWithImpl<$Res>
    extends _$PTAssistantCopyWithImpl<$Res, _$_PTAssistant>
    implements _$$_PTAssistantCopyWith<$Res> {
  __$$_PTAssistantCopyWithImpl(
      _$_PTAssistant _value, $Res Function(_$_PTAssistant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bio = null,
    Object? createdName = null,
  }) {
    return _then(_$_PTAssistant(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      createdName: null == createdName
          ? _value.createdName
          : createdName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PTAssistant implements _PTAssistant {
  const _$_PTAssistant(
      {required this.id,
      required this.name,
      required this.bio,
      required this.createdName});

  @override
  final int id;
  @override
  final String name;
  @override
  final String bio;
  @override
  final String createdName;

  @override
  String toString() {
    return 'PTAssistant(id: $id, name: $name, bio: $bio, createdName: $createdName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PTAssistant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.createdName, createdName) ||
                other.createdName == createdName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, bio, createdName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PTAssistantCopyWith<_$_PTAssistant> get copyWith =>
      __$$_PTAssistantCopyWithImpl<_$_PTAssistant>(this, _$identity);
}

abstract class _PTAssistant implements PTAssistant {
  const factory _PTAssistant(
      {required final int id,
      required final String name,
      required final String bio,
      required final String createdName}) = _$_PTAssistant;

  @override
  int get id;
  @override
  String get name;
  @override
  String get bio;
  @override
  String get createdName;
  @override
  @JsonKey(ignore: true)
  _$$_PTAssistantCopyWith<_$_PTAssistant> get copyWith =>
      throw _privateConstructorUsedError;
}
