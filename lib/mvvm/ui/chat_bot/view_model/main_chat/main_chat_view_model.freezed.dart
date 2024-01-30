// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_chat_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainChatState {
  MainChatData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainChatStateCopyWith<MainChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainChatStateCopyWith<$Res> {
  factory $MainChatStateCopyWith(
          MainChatState value, $Res Function(MainChatState) then) =
      _$MainChatStateCopyWithImpl<$Res, MainChatState>;
  @useResult
  $Res call({MainChatData data});

  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainChatStateCopyWithImpl<$Res, $Val extends MainChatState>
    implements $MainChatStateCopyWith<$Res> {
  _$MainChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainChatDataCopyWith<$Res> get data {
    return $MainChatDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Initial(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends MainChatState {
  const factory _Initial({required final MainChatData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTabSuccessCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_ChangeTabSuccessCopyWith(
          _$_ChangeTabSuccess value, $Res Function(_$_ChangeTabSuccess) then) =
      __$$_ChangeTabSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeTabSuccessCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_ChangeTabSuccess>
    implements _$$_ChangeTabSuccessCopyWith<$Res> {
  __$$_ChangeTabSuccessCopyWithImpl(
      _$_ChangeTabSuccess _value, $Res Function(_$_ChangeTabSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeTabSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_ChangeTabSuccess extends _ChangeTabSuccess {
  const _$_ChangeTabSuccess({required this.data}) : super._();

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.changeTabSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTabSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTabSuccessCopyWith<_$_ChangeTabSuccess> get copyWith =>
      __$$_ChangeTabSuccessCopyWithImpl<_$_ChangeTabSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) {
    return changeTabSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) {
    return changeTabSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (changeTabSuccess != null) {
      return changeTabSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) {
    return changeTabSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) {
    return changeTabSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (changeTabSuccess != null) {
      return changeTabSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabSuccess extends MainChatState {
  const factory _ChangeTabSuccess({required final MainChatData data}) =
      _$_ChangeTabSuccess;
  const _ChangeTabSuccess._() : super._();

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeTabSuccessCopyWith<_$_ChangeTabSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeChatFocusCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_ChangeChatFocusCopyWith(
          _$_ChangeChatFocus value, $Res Function(_$_ChangeChatFocus) then) =
      __$$_ChangeChatFocusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeChatFocusCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_ChangeChatFocus>
    implements _$$_ChangeChatFocusCopyWith<$Res> {
  __$$_ChangeChatFocusCopyWithImpl(
      _$_ChangeChatFocus _value, $Res Function(_$_ChangeChatFocus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeChatFocus(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_ChangeChatFocus extends _ChangeChatFocus {
  const _$_ChangeChatFocus({required this.data}) : super._();

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.changeChatFocus(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeChatFocus &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeChatFocusCopyWith<_$_ChangeChatFocus> get copyWith =>
      __$$_ChangeChatFocusCopyWithImpl<_$_ChangeChatFocus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) {
    return changeChatFocus(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) {
    return changeChatFocus?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (changeChatFocus != null) {
      return changeChatFocus(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) {
    return changeChatFocus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) {
    return changeChatFocus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (changeChatFocus != null) {
      return changeChatFocus(this);
    }
    return orElse();
  }
}

abstract class _ChangeChatFocus extends MainChatState {
  const factory _ChangeChatFocus({required final MainChatData data}) =
      _$_ChangeChatFocus;
  const _ChangeChatFocus._() : super._();

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeChatFocusCopyWith<_$_ChangeChatFocus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Loading(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends MainChatState {
  const factory _Loading({required final MainChatData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetChatThreadSuccessCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_GetChatThreadSuccessCopyWith(_$_GetChatThreadSuccess value,
          $Res Function(_$_GetChatThreadSuccess) then) =
      __$$_GetChatThreadSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetChatThreadSuccessCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_GetChatThreadSuccess>
    implements _$$_GetChatThreadSuccessCopyWith<$Res> {
  __$$_GetChatThreadSuccessCopyWithImpl(_$_GetChatThreadSuccess _value,
      $Res Function(_$_GetChatThreadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetChatThreadSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_GetChatThreadSuccess extends _GetChatThreadSuccess {
  const _$_GetChatThreadSuccess({required this.data}) : super._();

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.getChatThreadSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetChatThreadSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetChatThreadSuccessCopyWith<_$_GetChatThreadSuccess> get copyWith =>
      __$$_GetChatThreadSuccessCopyWithImpl<_$_GetChatThreadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) {
    return getChatThreadSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) {
    return getChatThreadSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (getChatThreadSuccess != null) {
      return getChatThreadSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) {
    return getChatThreadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) {
    return getChatThreadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (getChatThreadSuccess != null) {
      return getChatThreadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetChatThreadSuccess extends MainChatState {
  const factory _GetChatThreadSuccess({required final MainChatData data}) =
      _$_GetChatThreadSuccess;
  const _GetChatThreadSuccess._() : super._();

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetChatThreadSuccessCopyWith<_$_GetChatThreadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetChatThreadFailedCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_GetChatThreadFailedCopyWith(_$_GetChatThreadFailed value,
          $Res Function(_$_GetChatThreadFailed) then) =
      __$$_GetChatThreadFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data, String message});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetChatThreadFailedCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_GetChatThreadFailed>
    implements _$$_GetChatThreadFailedCopyWith<$Res> {
  __$$_GetChatThreadFailedCopyWithImpl(_$_GetChatThreadFailed _value,
      $Res Function(_$_GetChatThreadFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetChatThreadFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetChatThreadFailed extends _GetChatThreadFailed {
  const _$_GetChatThreadFailed({required this.data, required this.message})
      : super._();

  @override
  final MainChatData data;
  @override
  final String message;

  @override
  String toString() {
    return 'MainChatState.getChatThreadFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetChatThreadFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetChatThreadFailedCopyWith<_$_GetChatThreadFailed> get copyWith =>
      __$$_GetChatThreadFailedCopyWithImpl<_$_GetChatThreadFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
    required TResult Function(MainChatData data) changeChatFocus,
    required TResult Function(MainChatData data) loading,
    required TResult Function(MainChatData data) getChatThreadSuccess,
    required TResult Function(MainChatData data, String message)
        getChatThreadFailed,
  }) {
    return getChatThreadFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
    TResult? Function(MainChatData data)? changeChatFocus,
    TResult? Function(MainChatData data)? loading,
    TResult? Function(MainChatData data)? getChatThreadSuccess,
    TResult? Function(MainChatData data, String message)? getChatThreadFailed,
  }) {
    return getChatThreadFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    TResult Function(MainChatData data)? changeChatFocus,
    TResult Function(MainChatData data)? loading,
    TResult Function(MainChatData data)? getChatThreadSuccess,
    TResult Function(MainChatData data, String message)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (getChatThreadFailed != null) {
      return getChatThreadFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
    required TResult Function(_ChangeChatFocus value) changeChatFocus,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetChatThreadSuccess value) getChatThreadSuccess,
    required TResult Function(_GetChatThreadFailed value) getChatThreadFailed,
  }) {
    return getChatThreadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult? Function(_ChangeChatFocus value)? changeChatFocus,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult? Function(_GetChatThreadFailed value)? getChatThreadFailed,
  }) {
    return getChatThreadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    TResult Function(_ChangeChatFocus value)? changeChatFocus,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetChatThreadSuccess value)? getChatThreadSuccess,
    TResult Function(_GetChatThreadFailed value)? getChatThreadFailed,
    required TResult orElse(),
  }) {
    if (getChatThreadFailed != null) {
      return getChatThreadFailed(this);
    }
    return orElse();
  }
}

abstract class _GetChatThreadFailed extends MainChatState {
  const factory _GetChatThreadFailed(
      {required final MainChatData data,
      required final String message}) = _$_GetChatThreadFailed;
  const _GetChatThreadFailed._() : super._();

  @override
  MainChatData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetChatThreadFailedCopyWith<_$_GetChatThreadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
