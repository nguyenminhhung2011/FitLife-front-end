// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  SignInData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData data) initial,
    required TResult Function(SignInData data) loading,
    required TResult Function(SignInData data) signInSuccess,
    required TResult Function(SignInData data, String message) signInFailed,
    required TResult Function(SignInData data) inValidFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData data)? initial,
    TResult? Function(SignInData data)? loading,
    TResult? Function(SignInData data)? signInSuccess,
    TResult? Function(SignInData data, String message)? signInFailed,
    TResult? Function(SignInData data)? inValidFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData data)? initial,
    TResult Function(SignInData data)? loading,
    TResult Function(SignInData data)? signInSuccess,
    TResult Function(SignInData data, String message)? signInFailed,
    TResult Function(SignInData data)? inValidFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_InvalidFormat value) inValidFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignInSuccess value)? signInSuccess,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_InvalidFormat value)? inValidFormat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_InvalidFormat value)? inValidFormat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({SignInData data});

  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

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
              as SignInData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInDataCopyWith<$Res> get data {
    return $SignInDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInData data});

  @override
  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Initial>
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
              as SignInData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final SignInData data;

  @override
  String toString() {
    return 'SignInState.initial(data: $data)';
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
    required TResult Function(SignInData data) initial,
    required TResult Function(SignInData data) loading,
    required TResult Function(SignInData data) signInSuccess,
    required TResult Function(SignInData data, String message) signInFailed,
    required TResult Function(SignInData data) inValidFormat,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData data)? initial,
    TResult? Function(SignInData data)? loading,
    TResult? Function(SignInData data)? signInSuccess,
    TResult? Function(SignInData data, String message)? signInFailed,
    TResult? Function(SignInData data)? inValidFormat,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData data)? initial,
    TResult Function(SignInData data)? loading,
    TResult Function(SignInData data)? signInSuccess,
    TResult Function(SignInData data, String message)? signInFailed,
    TResult Function(SignInData data)? inValidFormat,
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
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_InvalidFormat value) inValidFormat,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignInSuccess value)? signInSuccess,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_InvalidFormat value)? inValidFormat,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_InvalidFormat value)? inValidFormat,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SignInState {
  const factory _Initial({required final SignInData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  SignInData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInData data});

  @override
  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_Loading>
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
              as SignInData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final SignInData data;

  @override
  String toString() {
    return 'SignInState.loading(data: $data)';
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
    required TResult Function(SignInData data) initial,
    required TResult Function(SignInData data) loading,
    required TResult Function(SignInData data) signInSuccess,
    required TResult Function(SignInData data, String message) signInFailed,
    required TResult Function(SignInData data) inValidFormat,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData data)? initial,
    TResult? Function(SignInData data)? loading,
    TResult? Function(SignInData data)? signInSuccess,
    TResult? Function(SignInData data, String message)? signInFailed,
    TResult? Function(SignInData data)? inValidFormat,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData data)? initial,
    TResult Function(SignInData data)? loading,
    TResult Function(SignInData data)? signInSuccess,
    TResult Function(SignInData data, String message)? signInFailed,
    TResult Function(SignInData data)? inValidFormat,
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
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_InvalidFormat value) inValidFormat,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignInSuccess value)? signInSuccess,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_InvalidFormat value)? inValidFormat,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_InvalidFormat value)? inValidFormat,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SignInState {
  const factory _Loading({required final SignInData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  SignInData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInSuccessCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInSuccessCopyWith(
          _$_SignInSuccess value, $Res Function(_$_SignInSuccess) then) =
      __$$_SignInSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInData data});

  @override
  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SignInSuccessCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInSuccess>
    implements _$$_SignInSuccessCopyWith<$Res> {
  __$$_SignInSuccessCopyWithImpl(
      _$_SignInSuccess _value, $Res Function(_$_SignInSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SignInSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInData,
    ));
  }
}

/// @nodoc

class _$_SignInSuccess extends _SignInSuccess {
  const _$_SignInSuccess({required this.data}) : super._();

  @override
  final SignInData data;

  @override
  String toString() {
    return 'SignInState.signInSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInSuccessCopyWith<_$_SignInSuccess> get copyWith =>
      __$$_SignInSuccessCopyWithImpl<_$_SignInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData data) initial,
    required TResult Function(SignInData data) loading,
    required TResult Function(SignInData data) signInSuccess,
    required TResult Function(SignInData data, String message) signInFailed,
    required TResult Function(SignInData data) inValidFormat,
  }) {
    return signInSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData data)? initial,
    TResult? Function(SignInData data)? loading,
    TResult? Function(SignInData data)? signInSuccess,
    TResult? Function(SignInData data, String message)? signInFailed,
    TResult? Function(SignInData data)? inValidFormat,
  }) {
    return signInSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData data)? initial,
    TResult Function(SignInData data)? loading,
    TResult Function(SignInData data)? signInSuccess,
    TResult Function(SignInData data, String message)? signInFailed,
    TResult Function(SignInData data)? inValidFormat,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_InvalidFormat value) inValidFormat,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignInSuccess value)? signInSuccess,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_InvalidFormat value)? inValidFormat,
  }) {
    return signInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_InvalidFormat value)? inValidFormat,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignInSuccess extends SignInState {
  const factory _SignInSuccess({required final SignInData data}) =
      _$_SignInSuccess;
  const _SignInSuccess._() : super._();

  @override
  SignInData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SignInSuccessCopyWith<_$_SignInSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInFailedCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInFailedCopyWith(
          _$_SignInFailed value, $Res Function(_$_SignInFailed) then) =
      __$$_SignInFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInData data, String message});

  @override
  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SignInFailedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInFailed>
    implements _$$_SignInFailedCopyWith<$Res> {
  __$$_SignInFailedCopyWithImpl(
      _$_SignInFailed _value, $Res Function(_$_SignInFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SignInFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInFailed extends _SignInFailed {
  const _$_SignInFailed({required this.data, required this.message})
      : super._();

  @override
  final SignInData data;
  @override
  final String message;

  @override
  String toString() {
    return 'SignInState.signInFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFailedCopyWith<_$_SignInFailed> get copyWith =>
      __$$_SignInFailedCopyWithImpl<_$_SignInFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData data) initial,
    required TResult Function(SignInData data) loading,
    required TResult Function(SignInData data) signInSuccess,
    required TResult Function(SignInData data, String message) signInFailed,
    required TResult Function(SignInData data) inValidFormat,
  }) {
    return signInFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData data)? initial,
    TResult? Function(SignInData data)? loading,
    TResult? Function(SignInData data)? signInSuccess,
    TResult? Function(SignInData data, String message)? signInFailed,
    TResult? Function(SignInData data)? inValidFormat,
  }) {
    return signInFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData data)? initial,
    TResult Function(SignInData data)? loading,
    TResult Function(SignInData data)? signInSuccess,
    TResult Function(SignInData data, String message)? signInFailed,
    TResult Function(SignInData data)? inValidFormat,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_InvalidFormat value) inValidFormat,
  }) {
    return signInFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignInSuccess value)? signInSuccess,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_InvalidFormat value)? inValidFormat,
  }) {
    return signInFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_InvalidFormat value)? inValidFormat,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(this);
    }
    return orElse();
  }
}

abstract class _SignInFailed extends SignInState {
  const factory _SignInFailed(
      {required final SignInData data,
      required final String message}) = _$_SignInFailed;
  const _SignInFailed._() : super._();

  @override
  SignInData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFailedCopyWith<_$_SignInFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidFormatCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_InvalidFormatCopyWith(
          _$_InvalidFormat value, $Res Function(_$_InvalidFormat) then) =
      __$$_InvalidFormatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInData data});

  @override
  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InvalidFormatCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_InvalidFormat>
    implements _$$_InvalidFormatCopyWith<$Res> {
  __$$_InvalidFormatCopyWithImpl(
      _$_InvalidFormat _value, $Res Function(_$_InvalidFormat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_InvalidFormat(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInData,
    ));
  }
}

/// @nodoc

class _$_InvalidFormat extends _InvalidFormat {
  const _$_InvalidFormat({required this.data}) : super._();

  @override
  final SignInData data;

  @override
  String toString() {
    return 'SignInState.inValidFormat(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidFormat &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidFormatCopyWith<_$_InvalidFormat> get copyWith =>
      __$$_InvalidFormatCopyWithImpl<_$_InvalidFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignInData data) initial,
    required TResult Function(SignInData data) loading,
    required TResult Function(SignInData data) signInSuccess,
    required TResult Function(SignInData data, String message) signInFailed,
    required TResult Function(SignInData data) inValidFormat,
  }) {
    return inValidFormat(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignInData data)? initial,
    TResult? Function(SignInData data)? loading,
    TResult? Function(SignInData data)? signInSuccess,
    TResult? Function(SignInData data, String message)? signInFailed,
    TResult? Function(SignInData data)? inValidFormat,
  }) {
    return inValidFormat?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignInData data)? initial,
    TResult Function(SignInData data)? loading,
    TResult Function(SignInData data)? signInSuccess,
    TResult Function(SignInData data, String message)? signInFailed,
    TResult Function(SignInData data)? inValidFormat,
    required TResult orElse(),
  }) {
    if (inValidFormat != null) {
      return inValidFormat(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInFailed value) signInFailed,
    required TResult Function(_InvalidFormat value) inValidFormat,
  }) {
    return inValidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignInSuccess value)? signInSuccess,
    TResult? Function(_SignInFailed value)? signInFailed,
    TResult? Function(_InvalidFormat value)? inValidFormat,
  }) {
    return inValidFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInFailed value)? signInFailed,
    TResult Function(_InvalidFormat value)? inValidFormat,
    required TResult orElse(),
  }) {
    if (inValidFormat != null) {
      return inValidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat extends SignInState {
  const factory _InvalidFormat({required final SignInData data}) =
      _$_InvalidFormat;
  const _InvalidFormat._() : super._();

  @override
  SignInData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidFormatCopyWith<_$_InvalidFormat> get copyWith =>
      throw _privateConstructorUsedError;
}
