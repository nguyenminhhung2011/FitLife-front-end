// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  SignUpData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpData data) initial,
    required TResult Function(SignUpData data) invalidFormat,
    required TResult Function(SignUpData data) loading,
    required TResult Function(SignUpData data) signUpSuccess,
    required TResult Function(SignUpData data, String message) signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpData data)? initial,
    TResult? Function(SignUpData data)? invalidFormat,
    TResult? Function(SignUpData data)? loading,
    TResult? Function(SignUpData data)? signUpSuccess,
    TResult? Function(SignUpData data, String message)? signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpData data)? initial,
    TResult Function(SignUpData data)? invalidFormat,
    TResult Function(SignUpData data)? loading,
    TResult Function(SignUpData data)? signUpSuccess,
    TResult Function(SignUpData data, String message)? signUpFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpFailed value) signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignUpSuccess value)? signUpSuccess,
    TResult? Function(_SignUpFailed value)? signUpFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpFailed value)? signUpFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({SignUpData data});

  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

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
              as SignUpData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpDataCopyWith<$Res> get data {
    return $SignUpDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpData data});

  @override
  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Initial>
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
              as SignUpData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final SignUpData data;

  @override
  String toString() {
    return 'SignUpState.initial(data: $data)';
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
    required TResult Function(SignUpData data) initial,
    required TResult Function(SignUpData data) invalidFormat,
    required TResult Function(SignUpData data) loading,
    required TResult Function(SignUpData data) signUpSuccess,
    required TResult Function(SignUpData data, String message) signUpFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpData data)? initial,
    TResult? Function(SignUpData data)? invalidFormat,
    TResult? Function(SignUpData data)? loading,
    TResult? Function(SignUpData data)? signUpSuccess,
    TResult? Function(SignUpData data, String message)? signUpFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpData data)? initial,
    TResult Function(SignUpData data)? invalidFormat,
    TResult Function(SignUpData data)? loading,
    TResult Function(SignUpData data)? signUpSuccess,
    TResult Function(SignUpData data, String message)? signUpFailed,
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
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpFailed value) signUpFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignUpSuccess value)? signUpSuccess,
    TResult? Function(_SignUpFailed value)? signUpFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpFailed value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SignUpState {
  const factory _Initial({required final SignUpData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  SignUpData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidFormatCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_InvalidFormatCopyWith(
          _$_InvalidFormat value, $Res Function(_$_InvalidFormat) then) =
      __$$_InvalidFormatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpData data});

  @override
  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InvalidFormatCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_InvalidFormat>
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
              as SignUpData,
    ));
  }
}

/// @nodoc

class _$_InvalidFormat extends _InvalidFormat {
  const _$_InvalidFormat({required this.data}) : super._();

  @override
  final SignUpData data;

  @override
  String toString() {
    return 'SignUpState.invalidFormat(data: $data)';
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
    required TResult Function(SignUpData data) initial,
    required TResult Function(SignUpData data) invalidFormat,
    required TResult Function(SignUpData data) loading,
    required TResult Function(SignUpData data) signUpSuccess,
    required TResult Function(SignUpData data, String message) signUpFailed,
  }) {
    return invalidFormat(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpData data)? initial,
    TResult? Function(SignUpData data)? invalidFormat,
    TResult? Function(SignUpData data)? loading,
    TResult? Function(SignUpData data)? signUpSuccess,
    TResult? Function(SignUpData data, String message)? signUpFailed,
  }) {
    return invalidFormat?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpData data)? initial,
    TResult Function(SignUpData data)? invalidFormat,
    TResult Function(SignUpData data)? loading,
    TResult Function(SignUpData data)? signUpSuccess,
    TResult Function(SignUpData data, String message)? signUpFailed,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpFailed value) signUpFailed,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignUpSuccess value)? signUpSuccess,
    TResult? Function(_SignUpFailed value)? signUpFailed,
  }) {
    return invalidFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpFailed value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat extends SignUpState {
  const factory _InvalidFormat({required final SignUpData data}) =
      _$_InvalidFormat;
  const _InvalidFormat._() : super._();

  @override
  SignUpData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidFormatCopyWith<_$_InvalidFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpData data});

  @override
  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_Loading>
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
              as SignUpData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final SignUpData data;

  @override
  String toString() {
    return 'SignUpState.loading(data: $data)';
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
    required TResult Function(SignUpData data) initial,
    required TResult Function(SignUpData data) invalidFormat,
    required TResult Function(SignUpData data) loading,
    required TResult Function(SignUpData data) signUpSuccess,
    required TResult Function(SignUpData data, String message) signUpFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpData data)? initial,
    TResult? Function(SignUpData data)? invalidFormat,
    TResult? Function(SignUpData data)? loading,
    TResult? Function(SignUpData data)? signUpSuccess,
    TResult? Function(SignUpData data, String message)? signUpFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpData data)? initial,
    TResult Function(SignUpData data)? invalidFormat,
    TResult Function(SignUpData data)? loading,
    TResult Function(SignUpData data)? signUpSuccess,
    TResult Function(SignUpData data, String message)? signUpFailed,
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
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpFailed value) signUpFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignUpSuccess value)? signUpSuccess,
    TResult? Function(_SignUpFailed value)? signUpFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpFailed value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SignUpState {
  const factory _Loading({required final SignUpData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  SignUpData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpSuccessCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpSuccessCopyWith(
          _$_SignUpSuccess value, $Res Function(_$_SignUpSuccess) then) =
      __$$_SignUpSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpData data});

  @override
  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SignUpSuccessCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpSuccess>
    implements _$$_SignUpSuccessCopyWith<$Res> {
  __$$_SignUpSuccessCopyWithImpl(
      _$_SignUpSuccess _value, $Res Function(_$_SignUpSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SignUpSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignUpData,
    ));
  }
}

/// @nodoc

class _$_SignUpSuccess extends _SignUpSuccess {
  const _$_SignUpSuccess({required this.data}) : super._();

  @override
  final SignUpData data;

  @override
  String toString() {
    return 'SignUpState.signUpSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpSuccessCopyWith<_$_SignUpSuccess> get copyWith =>
      __$$_SignUpSuccessCopyWithImpl<_$_SignUpSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpData data) initial,
    required TResult Function(SignUpData data) invalidFormat,
    required TResult Function(SignUpData data) loading,
    required TResult Function(SignUpData data) signUpSuccess,
    required TResult Function(SignUpData data, String message) signUpFailed,
  }) {
    return signUpSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpData data)? initial,
    TResult? Function(SignUpData data)? invalidFormat,
    TResult? Function(SignUpData data)? loading,
    TResult? Function(SignUpData data)? signUpSuccess,
    TResult? Function(SignUpData data, String message)? signUpFailed,
  }) {
    return signUpSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpData data)? initial,
    TResult Function(SignUpData data)? invalidFormat,
    TResult Function(SignUpData data)? loading,
    TResult Function(SignUpData data)? signUpSuccess,
    TResult Function(SignUpData data, String message)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpFailed value) signUpFailed,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignUpSuccess value)? signUpSuccess,
    TResult? Function(_SignUpFailed value)? signUpFailed,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpFailed value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignUpSuccess extends SignUpState {
  const factory _SignUpSuccess({required final SignUpData data}) =
      _$_SignUpSuccess;
  const _SignUpSuccess._() : super._();

  @override
  SignUpData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpSuccessCopyWith<_$_SignUpSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpFailedCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpFailedCopyWith(
          _$_SignUpFailed value, $Res Function(_$_SignUpFailed) then) =
      __$$_SignUpFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpData data, String message});

  @override
  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SignUpFailedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpFailed>
    implements _$$_SignUpFailedCopyWith<$Res> {
  __$$_SignUpFailedCopyWithImpl(
      _$_SignUpFailed _value, $Res Function(_$_SignUpFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_SignUpFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignUpData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpFailed extends _SignUpFailed {
  const _$_SignUpFailed({required this.data, required this.message})
      : super._();

  @override
  final SignUpData data;
  @override
  final String message;

  @override
  String toString() {
    return 'SignUpState.signUpFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFailedCopyWith<_$_SignUpFailed> get copyWith =>
      __$$_SignUpFailedCopyWithImpl<_$_SignUpFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpData data) initial,
    required TResult Function(SignUpData data) invalidFormat,
    required TResult Function(SignUpData data) loading,
    required TResult Function(SignUpData data) signUpSuccess,
    required TResult Function(SignUpData data, String message) signUpFailed,
  }) {
    return signUpFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpData data)? initial,
    TResult? Function(SignUpData data)? invalidFormat,
    TResult? Function(SignUpData data)? loading,
    TResult? Function(SignUpData data)? signUpSuccess,
    TResult? Function(SignUpData data, String message)? signUpFailed,
  }) {
    return signUpFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpData data)? initial,
    TResult Function(SignUpData data)? invalidFormat,
    TResult Function(SignUpData data)? loading,
    TResult Function(SignUpData data)? signUpSuccess,
    TResult Function(SignUpData data, String message)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpFailed value) signUpFailed,
  }) {
    return signUpFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SignUpSuccess value)? signUpSuccess,
    TResult? Function(_SignUpFailed value)? signUpFailed,
  }) {
    return signUpFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Loading value)? loading,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpFailed value)? signUpFailed,
    required TResult orElse(),
  }) {
    if (signUpFailed != null) {
      return signUpFailed(this);
    }
    return orElse();
  }
}

abstract class _SignUpFailed extends SignUpState {
  const factory _SignUpFailed(
      {required final SignUpData data,
      required final String message}) = _$_SignUpFailed;
  const _SignUpFailed._() : super._();

  @override
  SignUpData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFailedCopyWith<_$_SignUpFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
