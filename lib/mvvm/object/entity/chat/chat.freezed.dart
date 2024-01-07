// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Chat {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  PTAssistant? get ptAssistant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {int id,
      String title,
      DateTime createdAt,
      String? description,
      DateTime? updatedAt,
      PTAssistant? ptAssistant});

  $PTAssistantCopyWith<$Res>? get ptAssistant;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? ptAssistant = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ptAssistant: freezed == ptAssistant
          ? _value.ptAssistant
          : ptAssistant // ignore: cast_nullable_to_non_nullable
              as PTAssistant?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PTAssistantCopyWith<$Res>? get ptAssistant {
    if (_value.ptAssistant == null) {
      return null;
    }

    return $PTAssistantCopyWith<$Res>(_value.ptAssistant!, (value) {
      return _then(_value.copyWith(ptAssistant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      DateTime createdAt,
      String? description,
      DateTime? updatedAt,
      PTAssistant? ptAssistant});

  @override
  $PTAssistantCopyWith<$Res>? get ptAssistant;
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? updatedAt = freezed,
    Object? ptAssistant = freezed,
  }) {
    return _then(_$_Chat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ptAssistant: freezed == ptAssistant
          ? _value.ptAssistant
          : ptAssistant // ignore: cast_nullable_to_non_nullable
              as PTAssistant?,
    ));
  }
}

/// @nodoc

class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id,
      required this.title,
      required this.createdAt,
      this.description,
      this.updatedAt,
      this.ptAssistant});

  @override
  final int id;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final String? description;
  @override
  final DateTime? updatedAt;
  @override
  final PTAssistant? ptAssistant;

  @override
  String toString() {
    return 'Chat(id: $id, title: $title, createdAt: $createdAt, description: $description, updatedAt: $updatedAt, ptAssistant: $ptAssistant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ptAssistant, ptAssistant) ||
                other.ptAssistant == ptAssistant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, createdAt, description, updatedAt, ptAssistant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required final int id,
      required final String title,
      required final DateTime createdAt,
      final String? description,
      final DateTime? updatedAt,
      final PTAssistant? ptAssistant}) = _$_Chat;

  @override
  int get id;
  @override
  String get title;
  @override
  DateTime get createdAt;
  @override
  String? get description;
  @override
  DateTime? get updatedAt;
  @override
  PTAssistant? get ptAssistant;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
