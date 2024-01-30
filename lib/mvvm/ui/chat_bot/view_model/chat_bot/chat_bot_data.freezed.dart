// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bot_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatBotData {
  ChatThread? get chatThread => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  List<Trainer>? get allPreTrainer => throw _privateConstructorUsedError;
  List<Trainer>? get previewTrainer => throw _privateConstructorUsedError;
  bool get micAvailable => throw _privateConstructorUsedError;
  String get messageSpeechId => throw _privateConstructorUsedError;
  Trainer get trainerSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatBotDataCopyWith<ChatBotData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBotDataCopyWith<$Res> {
  factory $ChatBotDataCopyWith(
          ChatBotData value, $Res Function(ChatBotData) then) =
      _$ChatBotDataCopyWithImpl<$Res, ChatBotData>;
  @useResult
  $Res call(
      {ChatThread? chatThread,
      List<Message> messages,
      List<Trainer>? allPreTrainer,
      List<Trainer>? previewTrainer,
      bool micAvailable,
      String messageSpeechId,
      Trainer trainerSelected});

  $ChatThreadCopyWith<$Res>? get chatThread;
  $TrainerCopyWith<$Res> get trainerSelected;
}

/// @nodoc
class _$ChatBotDataCopyWithImpl<$Res, $Val extends ChatBotData>
    implements $ChatBotDataCopyWith<$Res> {
  _$ChatBotDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatThread = freezed,
    Object? messages = null,
    Object? allPreTrainer = freezed,
    Object? previewTrainer = freezed,
    Object? micAvailable = null,
    Object? messageSpeechId = null,
    Object? trainerSelected = null,
  }) {
    return _then(_value.copyWith(
      chatThread: freezed == chatThread
          ? _value.chatThread
          : chatThread // ignore: cast_nullable_to_non_nullable
              as ChatThread?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      allPreTrainer: freezed == allPreTrainer
          ? _value.allPreTrainer
          : allPreTrainer // ignore: cast_nullable_to_non_nullable
              as List<Trainer>?,
      previewTrainer: freezed == previewTrainer
          ? _value.previewTrainer
          : previewTrainer // ignore: cast_nullable_to_non_nullable
              as List<Trainer>?,
      micAvailable: null == micAvailable
          ? _value.micAvailable
          : micAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      messageSpeechId: null == messageSpeechId
          ? _value.messageSpeechId
          : messageSpeechId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerSelected: null == trainerSelected
          ? _value.trainerSelected
          : trainerSelected // ignore: cast_nullable_to_non_nullable
              as Trainer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatThreadCopyWith<$Res>? get chatThread {
    if (_value.chatThread == null) {
      return null;
    }

    return $ChatThreadCopyWith<$Res>(_value.chatThread!, (value) {
      return _then(_value.copyWith(chatThread: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrainerCopyWith<$Res> get trainerSelected {
    return $TrainerCopyWith<$Res>(_value.trainerSelected, (value) {
      return _then(_value.copyWith(trainerSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatBotDataCopyWith<$Res>
    implements $ChatBotDataCopyWith<$Res> {
  factory _$$_ChatBotDataCopyWith(
          _$_ChatBotData value, $Res Function(_$_ChatBotData) then) =
      __$$_ChatBotDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatThread? chatThread,
      List<Message> messages,
      List<Trainer>? allPreTrainer,
      List<Trainer>? previewTrainer,
      bool micAvailable,
      String messageSpeechId,
      Trainer trainerSelected});

  @override
  $ChatThreadCopyWith<$Res>? get chatThread;
  @override
  $TrainerCopyWith<$Res> get trainerSelected;
}

/// @nodoc
class __$$_ChatBotDataCopyWithImpl<$Res>
    extends _$ChatBotDataCopyWithImpl<$Res, _$_ChatBotData>
    implements _$$_ChatBotDataCopyWith<$Res> {
  __$$_ChatBotDataCopyWithImpl(
      _$_ChatBotData _value, $Res Function(_$_ChatBotData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatThread = freezed,
    Object? messages = null,
    Object? allPreTrainer = freezed,
    Object? previewTrainer = freezed,
    Object? micAvailable = null,
    Object? messageSpeechId = null,
    Object? trainerSelected = null,
  }) {
    return _then(_$_ChatBotData(
      chatThread: freezed == chatThread
          ? _value.chatThread
          : chatThread // ignore: cast_nullable_to_non_nullable
              as ChatThread?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      allPreTrainer: freezed == allPreTrainer
          ? _value._allPreTrainer
          : allPreTrainer // ignore: cast_nullable_to_non_nullable
              as List<Trainer>?,
      previewTrainer: freezed == previewTrainer
          ? _value._previewTrainer
          : previewTrainer // ignore: cast_nullable_to_non_nullable
              as List<Trainer>?,
      micAvailable: null == micAvailable
          ? _value.micAvailable
          : micAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      messageSpeechId: null == messageSpeechId
          ? _value.messageSpeechId
          : messageSpeechId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerSelected: null == trainerSelected
          ? _value.trainerSelected
          : trainerSelected // ignore: cast_nullable_to_non_nullable
              as Trainer,
    ));
  }
}

/// @nodoc

class _$_ChatBotData implements _ChatBotData {
  const _$_ChatBotData(
      {this.chatThread,
      required final List<Message> messages,
      final List<Trainer>? allPreTrainer,
      final List<Trainer>? previewTrainer,
      this.micAvailable = false,
      this.messageSpeechId = "",
      this.trainerSelected = Constant.defaultTrainer})
      : _messages = messages,
        _allPreTrainer = allPreTrainer,
        _previewTrainer = previewTrainer;

  @override
  final ChatThread? chatThread;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<Trainer>? _allPreTrainer;
  @override
  List<Trainer>? get allPreTrainer {
    final value = _allPreTrainer;
    if (value == null) return null;
    if (_allPreTrainer is EqualUnmodifiableListView) return _allPreTrainer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Trainer>? _previewTrainer;
  @override
  List<Trainer>? get previewTrainer {
    final value = _previewTrainer;
    if (value == null) return null;
    if (_previewTrainer is EqualUnmodifiableListView) return _previewTrainer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool micAvailable;
  @override
  @JsonKey()
  final String messageSpeechId;
  @override
  @JsonKey()
  final Trainer trainerSelected;

  @override
  String toString() {
    return 'ChatBotData(chatThread: $chatThread, messages: $messages, allPreTrainer: $allPreTrainer, previewTrainer: $previewTrainer, micAvailable: $micAvailable, messageSpeechId: $messageSpeechId, trainerSelected: $trainerSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatBotData &&
            (identical(other.chatThread, chatThread) ||
                other.chatThread == chatThread) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._allPreTrainer, _allPreTrainer) &&
            const DeepCollectionEquality()
                .equals(other._previewTrainer, _previewTrainer) &&
            (identical(other.micAvailable, micAvailable) ||
                other.micAvailable == micAvailable) &&
            (identical(other.messageSpeechId, messageSpeechId) ||
                other.messageSpeechId == messageSpeechId) &&
            (identical(other.trainerSelected, trainerSelected) ||
                other.trainerSelected == trainerSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatThread,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_allPreTrainer),
      const DeepCollectionEquality().hash(_previewTrainer),
      micAvailable,
      messageSpeechId,
      trainerSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatBotDataCopyWith<_$_ChatBotData> get copyWith =>
      __$$_ChatBotDataCopyWithImpl<_$_ChatBotData>(this, _$identity);
}

abstract class _ChatBotData implements ChatBotData {
  const factory _ChatBotData(
      {final ChatThread? chatThread,
      required final List<Message> messages,
      final List<Trainer>? allPreTrainer,
      final List<Trainer>? previewTrainer,
      final bool micAvailable,
      final String messageSpeechId,
      final Trainer trainerSelected}) = _$_ChatBotData;

  @override
  ChatThread? get chatThread;
  @override
  List<Message> get messages;
  @override
  List<Trainer>? get allPreTrainer;
  @override
  List<Trainer>? get previewTrainer;
  @override
  bool get micAvailable;
  @override
  String get messageSpeechId;
  @override
  Trainer get trainerSelected;
  @override
  @JsonKey(ignore: true)
  _$$_ChatBotDataCopyWith<_$_ChatBotData> get copyWith =>
      throw _privateConstructorUsedError;
}
