// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_chat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllChatData {
  List<ChatThread> get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllChatDataCopyWith<AllChatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChatDataCopyWith<$Res> {
  factory $AllChatDataCopyWith(
          AllChatData value, $Res Function(AllChatData) then) =
      _$AllChatDataCopyWithImpl<$Res, AllChatData>;
  @useResult
  $Res call({List<ChatThread> chats});
}

/// @nodoc
class _$AllChatDataCopyWithImpl<$Res, $Val extends AllChatData>
    implements $AllChatDataCopyWith<$Res> {
  _$AllChatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_value.copyWith(
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatThread>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllChatDataCopyWith<$Res>
    implements $AllChatDataCopyWith<$Res> {
  factory _$$_AllChatDataCopyWith(
          _$_AllChatData value, $Res Function(_$_AllChatData) then) =
      __$$_AllChatDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatThread> chats});
}

/// @nodoc
class __$$_AllChatDataCopyWithImpl<$Res>
    extends _$AllChatDataCopyWithImpl<$Res, _$_AllChatData>
    implements _$$_AllChatDataCopyWith<$Res> {
  __$$_AllChatDataCopyWithImpl(
      _$_AllChatData _value, $Res Function(_$_AllChatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$_AllChatData(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatThread>,
    ));
  }
}

/// @nodoc

class _$_AllChatData implements _AllChatData {
  const _$_AllChatData({required final List<ChatThread> chats})
      : _chats = chats;

  final List<ChatThread> _chats;
  @override
  List<ChatThread> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  String toString() {
    return 'AllChatData(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllChatData &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllChatDataCopyWith<_$_AllChatData> get copyWith =>
      __$$_AllChatDataCopyWithImpl<_$_AllChatData>(this, _$identity);
}

abstract class _AllChatData implements AllChatData {
  const factory _AllChatData({required final List<ChatThread> chats}) =
      _$_AllChatData;

  @override
  List<ChatThread> get chats;
  @override
  @JsonKey(ignore: true)
  _$$_AllChatDataCopyWith<_$_AllChatData> get copyWith =>
      throw _privateConstructorUsedError;
}
