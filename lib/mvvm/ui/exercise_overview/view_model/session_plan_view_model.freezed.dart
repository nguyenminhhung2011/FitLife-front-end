// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_plan_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionPlanState {
  SessionPlanData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SessionPlanData data) initial,
    required TResult Function(SessionPlanData data) loading,
    required TResult Function(SessionPlanData data) getSessionPlanSuccess,
    required TResult Function(SessionPlanData data, String message)
        getSessionPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionPlanData data)? initial,
    TResult? Function(SessionPlanData data)? loading,
    TResult? Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult? Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionPlanData data)? initial,
    TResult Function(SessionPlanData data)? loading,
    TResult Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetSessionPlanSuccess value)
        getSessionPlanSuccess,
    required TResult Function(_GetSessionPlanFailed value) getSessionPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult? Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionPlanStateCopyWith<SessionPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionPlanStateCopyWith<$Res> {
  factory $SessionPlanStateCopyWith(
          SessionPlanState value, $Res Function(SessionPlanState) then) =
      _$SessionPlanStateCopyWithImpl<$Res, SessionPlanState>;
  @useResult
  $Res call({SessionPlanData data});

  $SessionPlanDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SessionPlanStateCopyWithImpl<$Res, $Val extends SessionPlanState>
    implements $SessionPlanStateCopyWith<$Res> {
  _$SessionPlanStateCopyWithImpl(this._value, this._then);

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
              as SessionPlanData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionPlanDataCopyWith<$Res> get data {
    return $SessionPlanDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SessionPlanStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SessionPlanData data});

  @override
  $SessionPlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SessionPlanStateCopyWithImpl<$Res, _$_Initial>
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
              as SessionPlanData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final SessionPlanData data;

  @override
  String toString() {
    return 'SessionPlanState.initial(data: $data)';
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
    required TResult Function(SessionPlanData data) initial,
    required TResult Function(SessionPlanData data) loading,
    required TResult Function(SessionPlanData data) getSessionPlanSuccess,
    required TResult Function(SessionPlanData data, String message)
        getSessionPlanFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionPlanData data)? initial,
    TResult? Function(SessionPlanData data)? loading,
    TResult? Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult? Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionPlanData data)? initial,
    TResult Function(SessionPlanData data)? loading,
    TResult Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
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
    required TResult Function(_GetSessionPlanSuccess value)
        getSessionPlanSuccess,
    required TResult Function(_GetSessionPlanFailed value) getSessionPlanFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult? Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SessionPlanState {
  const factory _Initial({required final SessionPlanData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  SessionPlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SessionPlanStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SessionPlanData data});

  @override
  $SessionPlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SessionPlanStateCopyWithImpl<$Res, _$_Loading>
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
              as SessionPlanData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final SessionPlanData data;

  @override
  String toString() {
    return 'SessionPlanState.loading(data: $data)';
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
    required TResult Function(SessionPlanData data) initial,
    required TResult Function(SessionPlanData data) loading,
    required TResult Function(SessionPlanData data) getSessionPlanSuccess,
    required TResult Function(SessionPlanData data, String message)
        getSessionPlanFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionPlanData data)? initial,
    TResult? Function(SessionPlanData data)? loading,
    TResult? Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult? Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionPlanData data)? initial,
    TResult Function(SessionPlanData data)? loading,
    TResult Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
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
    required TResult Function(_GetSessionPlanSuccess value)
        getSessionPlanSuccess,
    required TResult Function(_GetSessionPlanFailed value) getSessionPlanFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult? Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SessionPlanState {
  const factory _Loading({required final SessionPlanData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  SessionPlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSessionPlanSuccessCopyWith<$Res>
    implements $SessionPlanStateCopyWith<$Res> {
  factory _$$_GetSessionPlanSuccessCopyWith(_$_GetSessionPlanSuccess value,
          $Res Function(_$_GetSessionPlanSuccess) then) =
      __$$_GetSessionPlanSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SessionPlanData data});

  @override
  $SessionPlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetSessionPlanSuccessCopyWithImpl<$Res>
    extends _$SessionPlanStateCopyWithImpl<$Res, _$_GetSessionPlanSuccess>
    implements _$$_GetSessionPlanSuccessCopyWith<$Res> {
  __$$_GetSessionPlanSuccessCopyWithImpl(_$_GetSessionPlanSuccess _value,
      $Res Function(_$_GetSessionPlanSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetSessionPlanSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SessionPlanData,
    ));
  }
}

/// @nodoc

class _$_GetSessionPlanSuccess extends _GetSessionPlanSuccess {
  const _$_GetSessionPlanSuccess({required this.data}) : super._();

  @override
  final SessionPlanData data;

  @override
  String toString() {
    return 'SessionPlanState.getSessionPlanSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSessionPlanSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSessionPlanSuccessCopyWith<_$_GetSessionPlanSuccess> get copyWith =>
      __$$_GetSessionPlanSuccessCopyWithImpl<_$_GetSessionPlanSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SessionPlanData data) initial,
    required TResult Function(SessionPlanData data) loading,
    required TResult Function(SessionPlanData data) getSessionPlanSuccess,
    required TResult Function(SessionPlanData data, String message)
        getSessionPlanFailed,
  }) {
    return getSessionPlanSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionPlanData data)? initial,
    TResult? Function(SessionPlanData data)? loading,
    TResult? Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult? Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
  }) {
    return getSessionPlanSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionPlanData data)? initial,
    TResult Function(SessionPlanData data)? loading,
    TResult Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
    required TResult orElse(),
  }) {
    if (getSessionPlanSuccess != null) {
      return getSessionPlanSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetSessionPlanSuccess value)
        getSessionPlanSuccess,
    required TResult Function(_GetSessionPlanFailed value) getSessionPlanFailed,
  }) {
    return getSessionPlanSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult? Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
  }) {
    return getSessionPlanSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
    required TResult orElse(),
  }) {
    if (getSessionPlanSuccess != null) {
      return getSessionPlanSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetSessionPlanSuccess extends SessionPlanState {
  const factory _GetSessionPlanSuccess({required final SessionPlanData data}) =
      _$_GetSessionPlanSuccess;
  const _GetSessionPlanSuccess._() : super._();

  @override
  SessionPlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetSessionPlanSuccessCopyWith<_$_GetSessionPlanSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSessionPlanFailedCopyWith<$Res>
    implements $SessionPlanStateCopyWith<$Res> {
  factory _$$_GetSessionPlanFailedCopyWith(_$_GetSessionPlanFailed value,
          $Res Function(_$_GetSessionPlanFailed) then) =
      __$$_GetSessionPlanFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SessionPlanData data, String message});

  @override
  $SessionPlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetSessionPlanFailedCopyWithImpl<$Res>
    extends _$SessionPlanStateCopyWithImpl<$Res, _$_GetSessionPlanFailed>
    implements _$$_GetSessionPlanFailedCopyWith<$Res> {
  __$$_GetSessionPlanFailedCopyWithImpl(_$_GetSessionPlanFailed _value,
      $Res Function(_$_GetSessionPlanFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetSessionPlanFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SessionPlanData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSessionPlanFailed extends _GetSessionPlanFailed {
  const _$_GetSessionPlanFailed({required this.data, required this.message})
      : super._();

  @override
  final SessionPlanData data;
  @override
  final String message;

  @override
  String toString() {
    return 'SessionPlanState.getSessionPlanFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSessionPlanFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSessionPlanFailedCopyWith<_$_GetSessionPlanFailed> get copyWith =>
      __$$_GetSessionPlanFailedCopyWithImpl<_$_GetSessionPlanFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SessionPlanData data) initial,
    required TResult Function(SessionPlanData data) loading,
    required TResult Function(SessionPlanData data) getSessionPlanSuccess,
    required TResult Function(SessionPlanData data, String message)
        getSessionPlanFailed,
  }) {
    return getSessionPlanFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionPlanData data)? initial,
    TResult? Function(SessionPlanData data)? loading,
    TResult? Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult? Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
  }) {
    return getSessionPlanFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionPlanData data)? initial,
    TResult Function(SessionPlanData data)? loading,
    TResult Function(SessionPlanData data)? getSessionPlanSuccess,
    TResult Function(SessionPlanData data, String message)?
        getSessionPlanFailed,
    required TResult orElse(),
  }) {
    if (getSessionPlanFailed != null) {
      return getSessionPlanFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetSessionPlanSuccess value)
        getSessionPlanSuccess,
    required TResult Function(_GetSessionPlanFailed value) getSessionPlanFailed,
  }) {
    return getSessionPlanFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult? Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
  }) {
    return getSessionPlanFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetSessionPlanSuccess value)? getSessionPlanSuccess,
    TResult Function(_GetSessionPlanFailed value)? getSessionPlanFailed,
    required TResult orElse(),
  }) {
    if (getSessionPlanFailed != null) {
      return getSessionPlanFailed(this);
    }
    return orElse();
  }
}

abstract class _GetSessionPlanFailed extends SessionPlanState {
  const factory _GetSessionPlanFailed(
      {required final SessionPlanData data,
      required final String message}) = _$_GetSessionPlanFailed;
  const _GetSessionPlanFailed._() : super._();

  @override
  SessionPlanData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetSessionPlanFailedCopyWith<_$_GetSessionPlanFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
