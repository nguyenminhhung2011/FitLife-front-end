// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OverviewState {
  OverviewData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverviewData data) initial,
    required TResult Function(OverviewData data) success,
    required TResult Function(OverviewData data) getUpComingSessionSuccess,
    required TResult Function(OverviewData data, String message)
        getUpComingSessionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverviewData data)? initial,
    TResult? Function(OverviewData data)? success,
    TResult? Function(OverviewData data)? getUpComingSessionSuccess,
    TResult? Function(OverviewData data, String message)?
        getUpComingSessionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverviewData data)? initial,
    TResult Function(OverviewData data)? success,
    TResult Function(OverviewData data)? getUpComingSessionSuccess,
    TResult Function(OverviewData data, String message)?
        getUpComingSessionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_GetUpComingSessionSuccess value)
        getUpComingSessionSuccess,
    required TResult Function(_GetUpComingSessionFailed value)
        getUpComingSessionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult? Function(_GetUpComingSessionFailed value)?
        getUpComingSessionFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult Function(_GetUpComingSessionFailed value)? getUpComingSessionFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewStateCopyWith<OverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
          OverviewState value, $Res Function(OverviewState) then) =
      _$OverviewStateCopyWithImpl<$Res, OverviewState>;
  @useResult
  $Res call({OverviewData data});

  $OverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res, $Val extends OverviewState>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._value, this._then);

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
              as OverviewData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewDataCopyWith<$Res> get data {
    return $OverviewDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverviewData data});

  @override
  $OverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$_Initial>
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
              as OverviewData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final OverviewData data;

  @override
  String toString() {
    return 'OverviewState.initial(data: $data)';
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
    required TResult Function(OverviewData data) initial,
    required TResult Function(OverviewData data) success,
    required TResult Function(OverviewData data) getUpComingSessionSuccess,
    required TResult Function(OverviewData data, String message)
        getUpComingSessionFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverviewData data)? initial,
    TResult? Function(OverviewData data)? success,
    TResult? Function(OverviewData data)? getUpComingSessionSuccess,
    TResult? Function(OverviewData data, String message)?
        getUpComingSessionFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverviewData data)? initial,
    TResult Function(OverviewData data)? success,
    TResult Function(OverviewData data)? getUpComingSessionSuccess,
    TResult Function(OverviewData data, String message)?
        getUpComingSessionFailed,
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
    required TResult Function(_Success value) success,
    required TResult Function(_GetUpComingSessionSuccess value)
        getUpComingSessionSuccess,
    required TResult Function(_GetUpComingSessionFailed value)
        getUpComingSessionFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult? Function(_GetUpComingSessionFailed value)?
        getUpComingSessionFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult Function(_GetUpComingSessionFailed value)? getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends OverviewState {
  const factory _Initial({required final OverviewData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  OverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverviewData data});

  @override
  $OverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Success(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OverviewData,
    ));
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success({required this.data}) : super._();

  @override
  final OverviewData data;

  @override
  String toString() {
    return 'OverviewState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverviewData data) initial,
    required TResult Function(OverviewData data) success,
    required TResult Function(OverviewData data) getUpComingSessionSuccess,
    required TResult Function(OverviewData data, String message)
        getUpComingSessionFailed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverviewData data)? initial,
    TResult? Function(OverviewData data)? success,
    TResult? Function(OverviewData data)? getUpComingSessionSuccess,
    TResult? Function(OverviewData data, String message)?
        getUpComingSessionFailed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverviewData data)? initial,
    TResult Function(OverviewData data)? success,
    TResult Function(OverviewData data)? getUpComingSessionSuccess,
    TResult Function(OverviewData data, String message)?
        getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_GetUpComingSessionSuccess value)
        getUpComingSessionSuccess,
    required TResult Function(_GetUpComingSessionFailed value)
        getUpComingSessionFailed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult? Function(_GetUpComingSessionFailed value)?
        getUpComingSessionFailed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult Function(_GetUpComingSessionFailed value)? getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends OverviewState {
  const factory _Success({required final OverviewData data}) = _$_Success;
  const _Success._() : super._();

  @override
  OverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUpComingSessionSuccessCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$_GetUpComingSessionSuccessCopyWith(
          _$_GetUpComingSessionSuccess value,
          $Res Function(_$_GetUpComingSessionSuccess) then) =
      __$$_GetUpComingSessionSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverviewData data});

  @override
  $OverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetUpComingSessionSuccessCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$_GetUpComingSessionSuccess>
    implements _$$_GetUpComingSessionSuccessCopyWith<$Res> {
  __$$_GetUpComingSessionSuccessCopyWithImpl(
      _$_GetUpComingSessionSuccess _value,
      $Res Function(_$_GetUpComingSessionSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetUpComingSessionSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OverviewData,
    ));
  }
}

/// @nodoc

class _$_GetUpComingSessionSuccess extends _GetUpComingSessionSuccess {
  const _$_GetUpComingSessionSuccess({required this.data}) : super._();

  @override
  final OverviewData data;

  @override
  String toString() {
    return 'OverviewState.getUpComingSessionSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUpComingSessionSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUpComingSessionSuccessCopyWith<_$_GetUpComingSessionSuccess>
      get copyWith => __$$_GetUpComingSessionSuccessCopyWithImpl<
          _$_GetUpComingSessionSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverviewData data) initial,
    required TResult Function(OverviewData data) success,
    required TResult Function(OverviewData data) getUpComingSessionSuccess,
    required TResult Function(OverviewData data, String message)
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverviewData data)? initial,
    TResult? Function(OverviewData data)? success,
    TResult? Function(OverviewData data)? getUpComingSessionSuccess,
    TResult? Function(OverviewData data, String message)?
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverviewData data)? initial,
    TResult Function(OverviewData data)? success,
    TResult Function(OverviewData data)? getUpComingSessionSuccess,
    TResult Function(OverviewData data, String message)?
        getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (getUpComingSessionSuccess != null) {
      return getUpComingSessionSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_GetUpComingSessionSuccess value)
        getUpComingSessionSuccess,
    required TResult Function(_GetUpComingSessionFailed value)
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult? Function(_GetUpComingSessionFailed value)?
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult Function(_GetUpComingSessionFailed value)? getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (getUpComingSessionSuccess != null) {
      return getUpComingSessionSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetUpComingSessionSuccess extends OverviewState {
  const factory _GetUpComingSessionSuccess({required final OverviewData data}) =
      _$_GetUpComingSessionSuccess;
  const _GetUpComingSessionSuccess._() : super._();

  @override
  OverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetUpComingSessionSuccessCopyWith<_$_GetUpComingSessionSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUpComingSessionFailedCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$_GetUpComingSessionFailedCopyWith(
          _$_GetUpComingSessionFailed value,
          $Res Function(_$_GetUpComingSessionFailed) then) =
      __$$_GetUpComingSessionFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverviewData data, String message});

  @override
  $OverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetUpComingSessionFailedCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$_GetUpComingSessionFailed>
    implements _$$_GetUpComingSessionFailedCopyWith<$Res> {
  __$$_GetUpComingSessionFailedCopyWithImpl(_$_GetUpComingSessionFailed _value,
      $Res Function(_$_GetUpComingSessionFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetUpComingSessionFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OverviewData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetUpComingSessionFailed extends _GetUpComingSessionFailed {
  const _$_GetUpComingSessionFailed({required this.data, required this.message})
      : super._();

  @override
  final OverviewData data;
  @override
  final String message;

  @override
  String toString() {
    return 'OverviewState.getUpComingSessionFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUpComingSessionFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUpComingSessionFailedCopyWith<_$_GetUpComingSessionFailed>
      get copyWith => __$$_GetUpComingSessionFailedCopyWithImpl<
          _$_GetUpComingSessionFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverviewData data) initial,
    required TResult Function(OverviewData data) success,
    required TResult Function(OverviewData data) getUpComingSessionSuccess,
    required TResult Function(OverviewData data, String message)
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverviewData data)? initial,
    TResult? Function(OverviewData data)? success,
    TResult? Function(OverviewData data)? getUpComingSessionSuccess,
    TResult? Function(OverviewData data, String message)?
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverviewData data)? initial,
    TResult Function(OverviewData data)? success,
    TResult Function(OverviewData data)? getUpComingSessionSuccess,
    TResult Function(OverviewData data, String message)?
        getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (getUpComingSessionFailed != null) {
      return getUpComingSessionFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_GetUpComingSessionSuccess value)
        getUpComingSessionSuccess,
    required TResult Function(_GetUpComingSessionFailed value)
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult? Function(_GetUpComingSessionFailed value)?
        getUpComingSessionFailed,
  }) {
    return getUpComingSessionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_GetUpComingSessionSuccess value)?
        getUpComingSessionSuccess,
    TResult Function(_GetUpComingSessionFailed value)? getUpComingSessionFailed,
    required TResult orElse(),
  }) {
    if (getUpComingSessionFailed != null) {
      return getUpComingSessionFailed(this);
    }
    return orElse();
  }
}

abstract class _GetUpComingSessionFailed extends OverviewState {
  const factory _GetUpComingSessionFailed(
      {required final OverviewData data,
      required final String message}) = _$_GetUpComingSessionFailed;
  const _GetUpComingSessionFailed._() : super._();

  @override
  OverviewData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetUpComingSessionFailedCopyWith<_$_GetUpComingSessionFailed>
      get copyWith => throw _privateConstructorUsedError;
}
