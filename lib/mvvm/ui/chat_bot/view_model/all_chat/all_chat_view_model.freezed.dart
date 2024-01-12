// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_chat_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllChatState {
  AllChatData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllChatData data) initial,
    required TResult Function(AllChatData data) loading,
    required TResult Function(AllChatData data) getAllChatSuccess,
    required TResult Function(AllChatData data, String message)
        getAllChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllChatData data)? initial,
    TResult? Function(AllChatData data)? loading,
    TResult? Function(AllChatData data)? getAllChatSuccess,
    TResult? Function(AllChatData data, String message)? getAllChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllChatData data)? initial,
    TResult Function(AllChatData data)? loading,
    TResult Function(AllChatData data)? getAllChatSuccess,
    TResult Function(AllChatData data, String message)? getAllChatFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetAllChatSuccess value) getAllChatSuccess,
    required TResult Function(_GetAllChatFailed value) getAllChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult? Function(_GetAllChatFailed value)? getAllChatFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult Function(_GetAllChatFailed value)? getAllChatFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllChatStateCopyWith<AllChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChatStateCopyWith<$Res> {
  factory $AllChatStateCopyWith(
          AllChatState value, $Res Function(AllChatState) then) =
      _$AllChatStateCopyWithImpl<$Res, AllChatState>;
  @useResult
  $Res call({AllChatData data});

  $AllChatDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AllChatStateCopyWithImpl<$Res, $Val extends AllChatState>
    implements $AllChatStateCopyWith<$Res> {
  _$AllChatStateCopyWithImpl(this._value, this._then);

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
              as AllChatData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllChatDataCopyWith<$Res> get data {
    return $AllChatDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AllChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllChatData data});

  @override
  $AllChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AllChatStateCopyWithImpl<$Res, _$_Initial>
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
              as AllChatData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  _$_Initial({required this.data}) : super._();

  @override
  final AllChatData data;

  @override
  String toString() {
    return 'AllChatState.initial(data: $data)';
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
    required TResult Function(AllChatData data) initial,
    required TResult Function(AllChatData data) loading,
    required TResult Function(AllChatData data) getAllChatSuccess,
    required TResult Function(AllChatData data, String message)
        getAllChatFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllChatData data)? initial,
    TResult? Function(AllChatData data)? loading,
    TResult? Function(AllChatData data)? getAllChatSuccess,
    TResult? Function(AllChatData data, String message)? getAllChatFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllChatData data)? initial,
    TResult Function(AllChatData data)? loading,
    TResult Function(AllChatData data)? getAllChatSuccess,
    TResult Function(AllChatData data, String message)? getAllChatFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetAllChatSuccess value) getAllChatSuccess,
    required TResult Function(_GetAllChatFailed value) getAllChatFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult? Function(_GetAllChatFailed value)? getAllChatFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult Function(_GetAllChatFailed value)? getAllChatFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AllChatState {
  factory _Initial({required final AllChatData data}) = _$_Initial;
  _Initial._() : super._();

  @override
  AllChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AllChatStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllChatData data});

  @override
  $AllChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AllChatStateCopyWithImpl<$Res, _$_Loading>
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
              as AllChatData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  _$_Loading({required this.data}) : super._();

  @override
  final AllChatData data;

  @override
  String toString() {
    return 'AllChatState.loading(data: $data)';
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
    required TResult Function(AllChatData data) initial,
    required TResult Function(AllChatData data) loading,
    required TResult Function(AllChatData data) getAllChatSuccess,
    required TResult Function(AllChatData data, String message)
        getAllChatFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllChatData data)? initial,
    TResult? Function(AllChatData data)? loading,
    TResult? Function(AllChatData data)? getAllChatSuccess,
    TResult? Function(AllChatData data, String message)? getAllChatFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllChatData data)? initial,
    TResult Function(AllChatData data)? loading,
    TResult Function(AllChatData data)? getAllChatSuccess,
    TResult Function(AllChatData data, String message)? getAllChatFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetAllChatSuccess value) getAllChatSuccess,
    required TResult Function(_GetAllChatFailed value) getAllChatFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult? Function(_GetAllChatFailed value)? getAllChatFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult Function(_GetAllChatFailed value)? getAllChatFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AllChatState {
  factory _Loading({required final AllChatData data}) = _$_Loading;
  _Loading._() : super._();

  @override
  AllChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllChatSuccessCopyWith<$Res>
    implements $AllChatStateCopyWith<$Res> {
  factory _$$_GetAllChatSuccessCopyWith(_$_GetAllChatSuccess value,
          $Res Function(_$_GetAllChatSuccess) then) =
      __$$_GetAllChatSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllChatData data});

  @override
  $AllChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetAllChatSuccessCopyWithImpl<$Res>
    extends _$AllChatStateCopyWithImpl<$Res, _$_GetAllChatSuccess>
    implements _$$_GetAllChatSuccessCopyWith<$Res> {
  __$$_GetAllChatSuccessCopyWithImpl(
      _$_GetAllChatSuccess _value, $Res Function(_$_GetAllChatSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetAllChatSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllChatData,
    ));
  }
}

/// @nodoc

class _$_GetAllChatSuccess extends _GetAllChatSuccess {
  _$_GetAllChatSuccess({required this.data}) : super._();

  @override
  final AllChatData data;

  @override
  String toString() {
    return 'AllChatState.getAllChatSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllChatSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllChatSuccessCopyWith<_$_GetAllChatSuccess> get copyWith =>
      __$$_GetAllChatSuccessCopyWithImpl<_$_GetAllChatSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllChatData data) initial,
    required TResult Function(AllChatData data) loading,
    required TResult Function(AllChatData data) getAllChatSuccess,
    required TResult Function(AllChatData data, String message)
        getAllChatFailed,
  }) {
    return getAllChatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllChatData data)? initial,
    TResult? Function(AllChatData data)? loading,
    TResult? Function(AllChatData data)? getAllChatSuccess,
    TResult? Function(AllChatData data, String message)? getAllChatFailed,
  }) {
    return getAllChatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllChatData data)? initial,
    TResult Function(AllChatData data)? loading,
    TResult Function(AllChatData data)? getAllChatSuccess,
    TResult Function(AllChatData data, String message)? getAllChatFailed,
    required TResult orElse(),
  }) {
    if (getAllChatSuccess != null) {
      return getAllChatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetAllChatSuccess value) getAllChatSuccess,
    required TResult Function(_GetAllChatFailed value) getAllChatFailed,
  }) {
    return getAllChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult? Function(_GetAllChatFailed value)? getAllChatFailed,
  }) {
    return getAllChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult Function(_GetAllChatFailed value)? getAllChatFailed,
    required TResult orElse(),
  }) {
    if (getAllChatSuccess != null) {
      return getAllChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetAllChatSuccess extends AllChatState {
  factory _GetAllChatSuccess({required final AllChatData data}) =
      _$_GetAllChatSuccess;
  _GetAllChatSuccess._() : super._();

  @override
  AllChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllChatSuccessCopyWith<_$_GetAllChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllChatFailedCopyWith<$Res>
    implements $AllChatStateCopyWith<$Res> {
  factory _$$_GetAllChatFailedCopyWith(
          _$_GetAllChatFailed value, $Res Function(_$_GetAllChatFailed) then) =
      __$$_GetAllChatFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllChatData data, String message});

  @override
  $AllChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetAllChatFailedCopyWithImpl<$Res>
    extends _$AllChatStateCopyWithImpl<$Res, _$_GetAllChatFailed>
    implements _$$_GetAllChatFailedCopyWith<$Res> {
  __$$_GetAllChatFailedCopyWithImpl(
      _$_GetAllChatFailed _value, $Res Function(_$_GetAllChatFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetAllChatFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllChatData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllChatFailed extends _GetAllChatFailed {
  _$_GetAllChatFailed({required this.data, required this.message}) : super._();

  @override
  final AllChatData data;
  @override
  final String message;

  @override
  String toString() {
    return 'AllChatState.getAllChatFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllChatFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllChatFailedCopyWith<_$_GetAllChatFailed> get copyWith =>
      __$$_GetAllChatFailedCopyWithImpl<_$_GetAllChatFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllChatData data) initial,
    required TResult Function(AllChatData data) loading,
    required TResult Function(AllChatData data) getAllChatSuccess,
    required TResult Function(AllChatData data, String message)
        getAllChatFailed,
  }) {
    return getAllChatFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllChatData data)? initial,
    TResult? Function(AllChatData data)? loading,
    TResult? Function(AllChatData data)? getAllChatSuccess,
    TResult? Function(AllChatData data, String message)? getAllChatFailed,
  }) {
    return getAllChatFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllChatData data)? initial,
    TResult Function(AllChatData data)? loading,
    TResult Function(AllChatData data)? getAllChatSuccess,
    TResult Function(AllChatData data, String message)? getAllChatFailed,
    required TResult orElse(),
  }) {
    if (getAllChatFailed != null) {
      return getAllChatFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetAllChatSuccess value) getAllChatSuccess,
    required TResult Function(_GetAllChatFailed value) getAllChatFailed,
  }) {
    return getAllChatFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult? Function(_GetAllChatFailed value)? getAllChatFailed,
  }) {
    return getAllChatFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetAllChatSuccess value)? getAllChatSuccess,
    TResult Function(_GetAllChatFailed value)? getAllChatFailed,
    required TResult orElse(),
  }) {
    if (getAllChatFailed != null) {
      return getAllChatFailed(this);
    }
    return orElse();
  }
}

abstract class _GetAllChatFailed extends AllChatState {
  factory _GetAllChatFailed(
      {required final AllChatData data,
      required final String message}) = _$_GetAllChatFailed;
  _GetAllChatFailed._() : super._();

  @override
  AllChatData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllChatFailedCopyWith<_$_GetAllChatFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
