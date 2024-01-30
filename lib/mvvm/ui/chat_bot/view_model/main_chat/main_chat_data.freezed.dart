// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_chat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainChatData {
  int get currentTab => throw _privateConstructorUsedError;
  String? get currentChatId => throw _privateConstructorUsedError;
  List<ChatThread>? get chatThreads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainChatDataCopyWith<MainChatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainChatDataCopyWith<$Res> {
  factory $MainChatDataCopyWith(
          MainChatData value, $Res Function(MainChatData) then) =
      _$MainChatDataCopyWithImpl<$Res, MainChatData>;
  @useResult
  $Res call(
      {int currentTab, String? currentChatId, List<ChatThread>? chatThreads});
}

/// @nodoc
class _$MainChatDataCopyWithImpl<$Res, $Val extends MainChatData>
    implements $MainChatDataCopyWith<$Res> {
  _$MainChatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
    Object? currentChatId = freezed,
    Object? chatThreads = freezed,
  }) {
    return _then(_value.copyWith(
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      currentChatId: freezed == currentChatId
          ? _value.currentChatId
          : currentChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatThreads: freezed == chatThreads
          ? _value.chatThreads
          : chatThreads // ignore: cast_nullable_to_non_nullable
              as List<ChatThread>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainChatDataCopyWith<$Res>
    implements $MainChatDataCopyWith<$Res> {
  factory _$$_MainChatDataCopyWith(
          _$_MainChatData value, $Res Function(_$_MainChatData) then) =
      __$$_MainChatDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentTab, String? currentChatId, List<ChatThread>? chatThreads});
}

/// @nodoc
class __$$_MainChatDataCopyWithImpl<$Res>
    extends _$MainChatDataCopyWithImpl<$Res, _$_MainChatData>
    implements _$$_MainChatDataCopyWith<$Res> {
  __$$_MainChatDataCopyWithImpl(
      _$_MainChatData _value, $Res Function(_$_MainChatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
    Object? currentChatId = freezed,
    Object? chatThreads = freezed,
  }) {
    return _then(_$_MainChatData(
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      currentChatId: freezed == currentChatId
          ? _value.currentChatId
          : currentChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatThreads: freezed == chatThreads
          ? _value._chatThreads
          : chatThreads // ignore: cast_nullable_to_non_nullable
              as List<ChatThread>?,
    ));
  }
}

/// @nodoc

class _$_MainChatData implements _MainChatData {
  const _$_MainChatData(
      {this.currentTab = 0,
      this.currentChatId,
      final List<ChatThread>? chatThreads})
      : _chatThreads = chatThreads;

  @override
  @JsonKey()
  final int currentTab;
  @override
  final String? currentChatId;
  final List<ChatThread>? _chatThreads;
  @override
  List<ChatThread>? get chatThreads {
    final value = _chatThreads;
    if (value == null) return null;
    if (_chatThreads is EqualUnmodifiableListView) return _chatThreads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MainChatData(currentTab: $currentTab, currentChatId: $currentChatId, chatThreads: $chatThreads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainChatData &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            (identical(other.currentChatId, currentChatId) ||
                other.currentChatId == currentChatId) &&
            const DeepCollectionEquality()
                .equals(other._chatThreads, _chatThreads));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTab, currentChatId,
      const DeepCollectionEquality().hash(_chatThreads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainChatDataCopyWith<_$_MainChatData> get copyWith =>
      __$$_MainChatDataCopyWithImpl<_$_MainChatData>(this, _$identity);
}

abstract class _MainChatData implements MainChatData {
  const factory _MainChatData(
      {final int currentTab,
      final String? currentChatId,
      final List<ChatThread>? chatThreads}) = _$_MainChatData;

  @override
  int get currentTab;
  @override
  String? get currentChatId;
  @override
  List<ChatThread>? get chatThreads;
  @override
  @JsonKey(ignore: true)
  _$$_MainChatDataCopyWith<_$_MainChatData> get copyWith =>
      throw _privateConstructorUsedError;
}
