// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  SplashData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplashData data) initial,
    required TResult Function(SplashData data, bool isCreated) isAuth,
    required TResult Function(SplashData data) isNotAuth,
    required TResult Function(SplashData data) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? initial,
    TResult? Function(SplashData data, bool isCreated)? isAuth,
    TResult? Function(SplashData data)? isNotAuth,
    TResult? Function(SplashData data)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? initial,
    TResult Function(SplashData data, bool isCreated)? isAuth,
    TResult Function(SplashData data)? isNotAuth,
    TResult Function(SplashData data)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsAuth value) isAuth,
    required TResult Function(_IsNotAuth value) isNotAuth,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsAuth value)? isAuth,
    TResult? Function(_IsNotAuth value)? isNotAuth,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsAuth value)? isAuth,
    TResult Function(_IsNotAuth value)? isNotAuth,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({SplashData data});

  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

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
              as SplashData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SplashDataCopyWith<$Res> get data {
    return $SplashDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashData data});

  @override
  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_Initial>
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
              as SplashData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final SplashData data;

  @override
  String toString() {
    return 'SplashState.initial(data: $data)';
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
    required TResult Function(SplashData data) initial,
    required TResult Function(SplashData data, bool isCreated) isAuth,
    required TResult Function(SplashData data) isNotAuth,
    required TResult Function(SplashData data) loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? initial,
    TResult? Function(SplashData data, bool isCreated)? isAuth,
    TResult? Function(SplashData data)? isNotAuth,
    TResult? Function(SplashData data)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? initial,
    TResult Function(SplashData data, bool isCreated)? isAuth,
    TResult Function(SplashData data)? isNotAuth,
    TResult Function(SplashData data)? loading,
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
    required TResult Function(_IsAuth value) isAuth,
    required TResult Function(_IsNotAuth value) isNotAuth,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsAuth value)? isAuth,
    TResult? Function(_IsNotAuth value)? isNotAuth,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsAuth value)? isAuth,
    TResult Function(_IsNotAuth value)? isNotAuth,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SplashState {
  const factory _Initial({required final SplashData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  SplashData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsAuthCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$$_IsAuthCopyWith(_$_IsAuth value, $Res Function(_$_IsAuth) then) =
      __$$_IsAuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashData data, bool isCreated});

  @override
  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IsAuthCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_IsAuth>
    implements _$$_IsAuthCopyWith<$Res> {
  __$$_IsAuthCopyWithImpl(_$_IsAuth _value, $Res Function(_$_IsAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isCreated = null,
  }) {
    return _then(_$_IsAuth(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SplashData,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsAuth extends _IsAuth {
  const _$_IsAuth({required this.data, required this.isCreated}) : super._();

  @override
  final SplashData data;
  @override
  final bool isCreated;

  @override
  String toString() {
    return 'SplashState.isAuth(data: $data, isCreated: $isCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsAuth &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsAuthCopyWith<_$_IsAuth> get copyWith =>
      __$$_IsAuthCopyWithImpl<_$_IsAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplashData data) initial,
    required TResult Function(SplashData data, bool isCreated) isAuth,
    required TResult Function(SplashData data) isNotAuth,
    required TResult Function(SplashData data) loading,
  }) {
    return isAuth(data, isCreated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? initial,
    TResult? Function(SplashData data, bool isCreated)? isAuth,
    TResult? Function(SplashData data)? isNotAuth,
    TResult? Function(SplashData data)? loading,
  }) {
    return isAuth?.call(data, isCreated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? initial,
    TResult Function(SplashData data, bool isCreated)? isAuth,
    TResult Function(SplashData data)? isNotAuth,
    TResult Function(SplashData data)? loading,
    required TResult orElse(),
  }) {
    if (isAuth != null) {
      return isAuth(data, isCreated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsAuth value) isAuth,
    required TResult Function(_IsNotAuth value) isNotAuth,
    required TResult Function(_Loading value) loading,
  }) {
    return isAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsAuth value)? isAuth,
    TResult? Function(_IsNotAuth value)? isNotAuth,
    TResult? Function(_Loading value)? loading,
  }) {
    return isAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsAuth value)? isAuth,
    TResult Function(_IsNotAuth value)? isNotAuth,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (isAuth != null) {
      return isAuth(this);
    }
    return orElse();
  }
}

abstract class _IsAuth extends SplashState {
  const factory _IsAuth(
      {required final SplashData data,
      required final bool isCreated}) = _$_IsAuth;
  const _IsAuth._() : super._();

  @override
  SplashData get data;
  bool get isCreated;
  @override
  @JsonKey(ignore: true)
  _$$_IsAuthCopyWith<_$_IsAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsNotAuthCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$_IsNotAuthCopyWith(
          _$_IsNotAuth value, $Res Function(_$_IsNotAuth) then) =
      __$$_IsNotAuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashData data});

  @override
  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IsNotAuthCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_IsNotAuth>
    implements _$$_IsNotAuthCopyWith<$Res> {
  __$$_IsNotAuthCopyWithImpl(
      _$_IsNotAuth _value, $Res Function(_$_IsNotAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_IsNotAuth(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SplashData,
    ));
  }
}

/// @nodoc

class _$_IsNotAuth extends _IsNotAuth {
  const _$_IsNotAuth({required this.data}) : super._();

  @override
  final SplashData data;

  @override
  String toString() {
    return 'SplashState.isNotAuth(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsNotAuth &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsNotAuthCopyWith<_$_IsNotAuth> get copyWith =>
      __$$_IsNotAuthCopyWithImpl<_$_IsNotAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplashData data) initial,
    required TResult Function(SplashData data, bool isCreated) isAuth,
    required TResult Function(SplashData data) isNotAuth,
    required TResult Function(SplashData data) loading,
  }) {
    return isNotAuth(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? initial,
    TResult? Function(SplashData data, bool isCreated)? isAuth,
    TResult? Function(SplashData data)? isNotAuth,
    TResult? Function(SplashData data)? loading,
  }) {
    return isNotAuth?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? initial,
    TResult Function(SplashData data, bool isCreated)? isAuth,
    TResult Function(SplashData data)? isNotAuth,
    TResult Function(SplashData data)? loading,
    required TResult orElse(),
  }) {
    if (isNotAuth != null) {
      return isNotAuth(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsAuth value) isAuth,
    required TResult Function(_IsNotAuth value) isNotAuth,
    required TResult Function(_Loading value) loading,
  }) {
    return isNotAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsAuth value)? isAuth,
    TResult? Function(_IsNotAuth value)? isNotAuth,
    TResult? Function(_Loading value)? loading,
  }) {
    return isNotAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsAuth value)? isAuth,
    TResult Function(_IsNotAuth value)? isNotAuth,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (isNotAuth != null) {
      return isNotAuth(this);
    }
    return orElse();
  }
}

abstract class _IsNotAuth extends SplashState {
  const factory _IsNotAuth({required final SplashData data}) = _$_IsNotAuth;
  const _IsNotAuth._() : super._();

  @override
  SplashData get data;
  @override
  @JsonKey(ignore: true)
  _$$_IsNotAuthCopyWith<_$_IsNotAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashData data});

  @override
  $SplashDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_Loading>
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
              as SplashData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final SplashData data;

  @override
  String toString() {
    return 'SplashState.loading(data: $data)';
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
    required TResult Function(SplashData data) initial,
    required TResult Function(SplashData data, bool isCreated) isAuth,
    required TResult Function(SplashData data) isNotAuth,
    required TResult Function(SplashData data) loading,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SplashData data)? initial,
    TResult? Function(SplashData data, bool isCreated)? isAuth,
    TResult? Function(SplashData data)? isNotAuth,
    TResult? Function(SplashData data)? loading,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplashData data)? initial,
    TResult Function(SplashData data, bool isCreated)? isAuth,
    TResult Function(SplashData data)? isNotAuth,
    TResult Function(SplashData data)? loading,
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
    required TResult Function(_IsAuth value) isAuth,
    required TResult Function(_IsNotAuth value) isNotAuth,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsAuth value)? isAuth,
    TResult? Function(_IsNotAuth value)? isNotAuth,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsAuth value)? isAuth,
    TResult Function(_IsNotAuth value)? isNotAuth,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SplashState {
  const factory _Loading({required final SplashData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  SplashData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
