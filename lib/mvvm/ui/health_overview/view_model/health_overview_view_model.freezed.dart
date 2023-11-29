// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_overview_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthOverviewState {
  HealthOverviewData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthOverviewData data) initial,
    required TResult Function(HealthOverviewData data) success,
    required TResult Function(HealthOverviewData data) loading,
    required TResult Function(HealthOverviewData data) updateInformationSuccess,
    required TResult Function(HealthOverviewData data, String message)
        updateInformationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthOverviewData data)? initial,
    TResult? Function(HealthOverviewData data)? success,
    TResult? Function(HealthOverviewData data)? loading,
    TResult? Function(HealthOverviewData data)? updateInformationSuccess,
    TResult? Function(HealthOverviewData data, String message)?
        updateInformationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthOverviewData data)? initial,
    TResult Function(HealthOverviewData data)? success,
    TResult Function(HealthOverviewData data)? loading,
    TResult Function(HealthOverviewData data)? updateInformationSuccess,
    TResult Function(HealthOverviewData data, String message)?
        updateInformationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_updateInformationSuccess value)
        updateInformationSuccess,
    required TResult Function(_updateInformationFailed value)
        updateInformationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_updateInformationSuccess value)?
        updateInformationSuccess,
    TResult? Function(_updateInformationFailed value)? updateInformationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_updateInformationSuccess value)? updateInformationSuccess,
    TResult Function(_updateInformationFailed value)? updateInformationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthOverviewStateCopyWith<HealthOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthOverviewStateCopyWith<$Res> {
  factory $HealthOverviewStateCopyWith(
          HealthOverviewState value, $Res Function(HealthOverviewState) then) =
      _$HealthOverviewStateCopyWithImpl<$Res, HealthOverviewState>;
  @useResult
  $Res call({HealthOverviewData data});

  $HealthOverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HealthOverviewStateCopyWithImpl<$Res, $Val extends HealthOverviewState>
    implements $HealthOverviewStateCopyWith<$Res> {
  _$HealthOverviewStateCopyWithImpl(this._value, this._then);

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
              as HealthOverviewData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HealthOverviewDataCopyWith<$Res> get data {
    return $HealthOverviewDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HealthOverviewStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HealthOverviewData data});

  @override
  $HealthOverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HealthOverviewStateCopyWithImpl<$Res, _$_Initial>
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
              as HealthOverviewData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final HealthOverviewData data;

  @override
  String toString() {
    return 'HealthOverviewState.initial(data: $data)';
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
    required TResult Function(HealthOverviewData data) initial,
    required TResult Function(HealthOverviewData data) success,
    required TResult Function(HealthOverviewData data) loading,
    required TResult Function(HealthOverviewData data) updateInformationSuccess,
    required TResult Function(HealthOverviewData data, String message)
        updateInformationFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthOverviewData data)? initial,
    TResult? Function(HealthOverviewData data)? success,
    TResult? Function(HealthOverviewData data)? loading,
    TResult? Function(HealthOverviewData data)? updateInformationSuccess,
    TResult? Function(HealthOverviewData data, String message)?
        updateInformationFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthOverviewData data)? initial,
    TResult Function(HealthOverviewData data)? success,
    TResult Function(HealthOverviewData data)? loading,
    TResult Function(HealthOverviewData data)? updateInformationSuccess,
    TResult Function(HealthOverviewData data, String message)?
        updateInformationFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_updateInformationSuccess value)
        updateInformationSuccess,
    required TResult Function(_updateInformationFailed value)
        updateInformationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_updateInformationSuccess value)?
        updateInformationSuccess,
    TResult? Function(_updateInformationFailed value)? updateInformationFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_updateInformationSuccess value)? updateInformationSuccess,
    TResult Function(_updateInformationFailed value)? updateInformationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends HealthOverviewState {
  const factory _Initial({required final HealthOverviewData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  HealthOverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $HealthOverviewStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HealthOverviewData data});

  @override
  $HealthOverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$HealthOverviewStateCopyWithImpl<$Res, _$_Success>
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
              as HealthOverviewData,
    ));
  }
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success({required this.data}) : super._();

  @override
  final HealthOverviewData data;

  @override
  String toString() {
    return 'HealthOverviewState.success(data: $data)';
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
    required TResult Function(HealthOverviewData data) initial,
    required TResult Function(HealthOverviewData data) success,
    required TResult Function(HealthOverviewData data) loading,
    required TResult Function(HealthOverviewData data) updateInformationSuccess,
    required TResult Function(HealthOverviewData data, String message)
        updateInformationFailed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthOverviewData data)? initial,
    TResult? Function(HealthOverviewData data)? success,
    TResult? Function(HealthOverviewData data)? loading,
    TResult? Function(HealthOverviewData data)? updateInformationSuccess,
    TResult? Function(HealthOverviewData data, String message)?
        updateInformationFailed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthOverviewData data)? initial,
    TResult Function(HealthOverviewData data)? success,
    TResult Function(HealthOverviewData data)? loading,
    TResult Function(HealthOverviewData data)? updateInformationSuccess,
    TResult Function(HealthOverviewData data, String message)?
        updateInformationFailed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_updateInformationSuccess value)
        updateInformationSuccess,
    required TResult Function(_updateInformationFailed value)
        updateInformationFailed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_updateInformationSuccess value)?
        updateInformationSuccess,
    TResult? Function(_updateInformationFailed value)? updateInformationFailed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_updateInformationSuccess value)? updateInformationSuccess,
    TResult Function(_updateInformationFailed value)? updateInformationFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends HealthOverviewState {
  const factory _Success({required final HealthOverviewData data}) = _$_Success;
  const _Success._() : super._();

  @override
  HealthOverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $HealthOverviewStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HealthOverviewData data});

  @override
  $HealthOverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HealthOverviewStateCopyWithImpl<$Res, _$_Loading>
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
              as HealthOverviewData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final HealthOverviewData data;

  @override
  String toString() {
    return 'HealthOverviewState.loading(data: $data)';
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
    required TResult Function(HealthOverviewData data) initial,
    required TResult Function(HealthOverviewData data) success,
    required TResult Function(HealthOverviewData data) loading,
    required TResult Function(HealthOverviewData data) updateInformationSuccess,
    required TResult Function(HealthOverviewData data, String message)
        updateInformationFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthOverviewData data)? initial,
    TResult? Function(HealthOverviewData data)? success,
    TResult? Function(HealthOverviewData data)? loading,
    TResult? Function(HealthOverviewData data)? updateInformationSuccess,
    TResult? Function(HealthOverviewData data, String message)?
        updateInformationFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthOverviewData data)? initial,
    TResult Function(HealthOverviewData data)? success,
    TResult Function(HealthOverviewData data)? loading,
    TResult Function(HealthOverviewData data)? updateInformationSuccess,
    TResult Function(HealthOverviewData data, String message)?
        updateInformationFailed,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_updateInformationSuccess value)
        updateInformationSuccess,
    required TResult Function(_updateInformationFailed value)
        updateInformationFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_updateInformationSuccess value)?
        updateInformationSuccess,
    TResult? Function(_updateInformationFailed value)? updateInformationFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_updateInformationSuccess value)? updateInformationSuccess,
    TResult Function(_updateInformationFailed value)? updateInformationFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends HealthOverviewState {
  const factory _Loading({required final HealthOverviewData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  HealthOverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_updateInformationSuccessCopyWith<$Res>
    implements $HealthOverviewStateCopyWith<$Res> {
  factory _$$_updateInformationSuccessCopyWith(
          _$_updateInformationSuccess value,
          $Res Function(_$_updateInformationSuccess) then) =
      __$$_updateInformationSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HealthOverviewData data});

  @override
  $HealthOverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_updateInformationSuccessCopyWithImpl<$Res>
    extends _$HealthOverviewStateCopyWithImpl<$Res, _$_updateInformationSuccess>
    implements _$$_updateInformationSuccessCopyWith<$Res> {
  __$$_updateInformationSuccessCopyWithImpl(_$_updateInformationSuccess _value,
      $Res Function(_$_updateInformationSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_updateInformationSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HealthOverviewData,
    ));
  }
}

/// @nodoc

class _$_updateInformationSuccess extends _updateInformationSuccess {
  const _$_updateInformationSuccess({required this.data}) : super._();

  @override
  final HealthOverviewData data;

  @override
  String toString() {
    return 'HealthOverviewState.updateInformationSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_updateInformationSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_updateInformationSuccessCopyWith<_$_updateInformationSuccess>
      get copyWith => __$$_updateInformationSuccessCopyWithImpl<
          _$_updateInformationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthOverviewData data) initial,
    required TResult Function(HealthOverviewData data) success,
    required TResult Function(HealthOverviewData data) loading,
    required TResult Function(HealthOverviewData data) updateInformationSuccess,
    required TResult Function(HealthOverviewData data, String message)
        updateInformationFailed,
  }) {
    return updateInformationSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthOverviewData data)? initial,
    TResult? Function(HealthOverviewData data)? success,
    TResult? Function(HealthOverviewData data)? loading,
    TResult? Function(HealthOverviewData data)? updateInformationSuccess,
    TResult? Function(HealthOverviewData data, String message)?
        updateInformationFailed,
  }) {
    return updateInformationSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthOverviewData data)? initial,
    TResult Function(HealthOverviewData data)? success,
    TResult Function(HealthOverviewData data)? loading,
    TResult Function(HealthOverviewData data)? updateInformationSuccess,
    TResult Function(HealthOverviewData data, String message)?
        updateInformationFailed,
    required TResult orElse(),
  }) {
    if (updateInformationSuccess != null) {
      return updateInformationSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_updateInformationSuccess value)
        updateInformationSuccess,
    required TResult Function(_updateInformationFailed value)
        updateInformationFailed,
  }) {
    return updateInformationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_updateInformationSuccess value)?
        updateInformationSuccess,
    TResult? Function(_updateInformationFailed value)? updateInformationFailed,
  }) {
    return updateInformationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_updateInformationSuccess value)? updateInformationSuccess,
    TResult Function(_updateInformationFailed value)? updateInformationFailed,
    required TResult orElse(),
  }) {
    if (updateInformationSuccess != null) {
      return updateInformationSuccess(this);
    }
    return orElse();
  }
}

abstract class _updateInformationSuccess extends HealthOverviewState {
  const factory _updateInformationSuccess(
      {required final HealthOverviewData data}) = _$_updateInformationSuccess;
  const _updateInformationSuccess._() : super._();

  @override
  HealthOverviewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_updateInformationSuccessCopyWith<_$_updateInformationSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_updateInformationFailedCopyWith<$Res>
    implements $HealthOverviewStateCopyWith<$Res> {
  factory _$$_updateInformationFailedCopyWith(_$_updateInformationFailed value,
          $Res Function(_$_updateInformationFailed) then) =
      __$$_updateInformationFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HealthOverviewData data, String message});

  @override
  $HealthOverviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_updateInformationFailedCopyWithImpl<$Res>
    extends _$HealthOverviewStateCopyWithImpl<$Res, _$_updateInformationFailed>
    implements _$$_updateInformationFailedCopyWith<$Res> {
  __$$_updateInformationFailedCopyWithImpl(_$_updateInformationFailed _value,
      $Res Function(_$_updateInformationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_updateInformationFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HealthOverviewData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_updateInformationFailed extends _updateInformationFailed {
  const _$_updateInformationFailed({required this.data, required this.message})
      : super._();

  @override
  final HealthOverviewData data;
  @override
  final String message;

  @override
  String toString() {
    return 'HealthOverviewState.updateInformationFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_updateInformationFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_updateInformationFailedCopyWith<_$_updateInformationFailed>
      get copyWith =>
          __$$_updateInformationFailedCopyWithImpl<_$_updateInformationFailed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthOverviewData data) initial,
    required TResult Function(HealthOverviewData data) success,
    required TResult Function(HealthOverviewData data) loading,
    required TResult Function(HealthOverviewData data) updateInformationSuccess,
    required TResult Function(HealthOverviewData data, String message)
        updateInformationFailed,
  }) {
    return updateInformationFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthOverviewData data)? initial,
    TResult? Function(HealthOverviewData data)? success,
    TResult? Function(HealthOverviewData data)? loading,
    TResult? Function(HealthOverviewData data)? updateInformationSuccess,
    TResult? Function(HealthOverviewData data, String message)?
        updateInformationFailed,
  }) {
    return updateInformationFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthOverviewData data)? initial,
    TResult Function(HealthOverviewData data)? success,
    TResult Function(HealthOverviewData data)? loading,
    TResult Function(HealthOverviewData data)? updateInformationSuccess,
    TResult Function(HealthOverviewData data, String message)?
        updateInformationFailed,
    required TResult orElse(),
  }) {
    if (updateInformationFailed != null) {
      return updateInformationFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_updateInformationSuccess value)
        updateInformationSuccess,
    required TResult Function(_updateInformationFailed value)
        updateInformationFailed,
  }) {
    return updateInformationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_updateInformationSuccess value)?
        updateInformationSuccess,
    TResult? Function(_updateInformationFailed value)? updateInformationFailed,
  }) {
    return updateInformationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_updateInformationSuccess value)? updateInformationSuccess,
    TResult Function(_updateInformationFailed value)? updateInformationFailed,
    required TResult orElse(),
  }) {
    if (updateInformationFailed != null) {
      return updateInformationFailed(this);
    }
    return orElse();
  }
}

abstract class _updateInformationFailed extends HealthOverviewState {
  const factory _updateInformationFailed(
      {required final HealthOverviewData data,
      required final String message}) = _$_updateInformationFailed;
  const _updateInformationFailed._() : super._();

  @override
  HealthOverviewData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_updateInformationFailedCopyWith<_$_updateInformationFailed>
      get copyWith => throw _privateConstructorUsedError;
}
