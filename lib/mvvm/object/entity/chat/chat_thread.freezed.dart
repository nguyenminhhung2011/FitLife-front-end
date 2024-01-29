// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatThread {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Message>? get chats => throw _privateConstructorUsedError;
  String? get openAiThreadId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Trainer? get trainer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatThreadCopyWith<ChatThread> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatThreadCopyWith<$Res> {
  factory $ChatThreadCopyWith(
          ChatThread value, $Res Function(ChatThread) then) =
      _$ChatThreadCopyWithImpl<$Res, ChatThread>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<Message>? chats,
      String? openAiThreadId,
      DateTime? createdAt,
      Trainer? trainer});

  $TrainerCopyWith<$Res>? get trainer;
}

/// @nodoc
class _$ChatThreadCopyWithImpl<$Res, $Val extends ChatThread>
    implements $ChatThreadCopyWith<$Res> {
  _$ChatThreadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? chats = freezed,
    Object? openAiThreadId = freezed,
    Object? createdAt = freezed,
    Object? trainer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      openAiThreadId: freezed == openAiThreadId
          ? _value.openAiThreadId
          : openAiThreadId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as Trainer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainerCopyWith<$Res>? get trainer {
    if (_value.trainer == null) {
      return null;
    }

    return $TrainerCopyWith<$Res>(_value.trainer!, (value) {
      return _then(_value.copyWith(trainer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatThreadCopyWith<$Res>
    implements $ChatThreadCopyWith<$Res> {
  factory _$$_ChatThreadCopyWith(
          _$_ChatThread value, $Res Function(_$_ChatThread) then) =
      __$$_ChatThreadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<Message>? chats,
      String? openAiThreadId,
      DateTime? createdAt,
      Trainer? trainer});

  @override
  $TrainerCopyWith<$Res>? get trainer;
}

/// @nodoc
class __$$_ChatThreadCopyWithImpl<$Res>
    extends _$ChatThreadCopyWithImpl<$Res, _$_ChatThread>
    implements _$$_ChatThreadCopyWith<$Res> {
  __$$_ChatThreadCopyWithImpl(
      _$_ChatThread _value, $Res Function(_$_ChatThread) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? chats = freezed,
    Object? openAiThreadId = freezed,
    Object? createdAt = freezed,
    Object? trainer = freezed,
  }) {
    return _then(_$_ChatThread(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chats: freezed == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      openAiThreadId: freezed == openAiThreadId
          ? _value.openAiThreadId
          : openAiThreadId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trainer: freezed == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as Trainer?,
    ));
  }
}

/// @nodoc

class _$_ChatThread implements _ChatThread {
  const _$_ChatThread(
      {required this.id,
      required this.title,
      final List<Message>? chats,
      this.openAiThreadId,
      this.createdAt,
      this.trainer})
      : _chats = chats;

  @override
  final String id;
  @override
  final String title;
  final List<Message>? _chats;
  @override
  List<Message>? get chats {
    final value = _chats;
    if (value == null) return null;
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? openAiThreadId;
  @override
  final DateTime? createdAt;
  @override
  final Trainer? trainer;

  @override
  String toString() {
    return 'ChatThread(id: $id, title: $title, chats: $chats, openAiThreadId: $openAiThreadId, createdAt: $createdAt, trainer: $trainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatThread &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.openAiThreadId, openAiThreadId) ||
                other.openAiThreadId == openAiThreadId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.trainer, trainer) || other.trainer == trainer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_chats),
      openAiThreadId,
      createdAt,
      trainer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatThreadCopyWith<_$_ChatThread> get copyWith =>
      __$$_ChatThreadCopyWithImpl<_$_ChatThread>(this, _$identity);
}

abstract class _ChatThread implements ChatThread {
  const factory _ChatThread(
      {required final String id,
      required final String title,
      final List<Message>? chats,
      final String? openAiThreadId,
      final DateTime? createdAt,
      final Trainer? trainer}) = _$_ChatThread;

  @override
  String get id;
  @override
  String get title;
  @override
  List<Message>? get chats;
  @override
  String? get openAiThreadId;
  @override
  DateTime? get createdAt;
  @override
  Trainer? get trainer;
  @override
  @JsonKey(ignore: true)
  _$$_ChatThreadCopyWith<_$_ChatThread> get copyWith =>
      throw _privateConstructorUsedError;
}
