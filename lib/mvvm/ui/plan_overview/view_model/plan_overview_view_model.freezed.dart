// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_overview_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanOverViewState {
  PlanOverViewData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanOverViewData data) initial,
    required TResult Function(PlanOverViewData data) success,
    required TResult Function(PlanOverViewData data) loading,
    required TResult Function(PlanOverViewData data) getCurrentPlanSuccess,
    required TResult Function(PlanOverViewData data, String message)
        getCurrentPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanOverViewData data)? initial,
    TResult? Function(PlanOverViewData data)? success,
    TResult? Function(PlanOverViewData data)? loading,
    TResult? Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult? Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanOverViewData data)? initial,
    TResult Function(PlanOverViewData data)? success,
    TResult Function(PlanOverViewData data)? loading,
    TResult Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCurrentPlanSuccess value)
        getCurrentPlanSuccess,
    required TResult Function(_GetCurrentPlanFailed value) getCurrentPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult? Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanOverViewStateCopyWith<PlanOverViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanOverViewStateCopyWith<$Res> {
  factory $PlanOverViewStateCopyWith(
          PlanOverViewState value, $Res Function(PlanOverViewState) then) =
      _$PlanOverViewStateCopyWithImpl<$Res, PlanOverViewState>;
  @useResult
  $Res call({PlanOverViewData data});

  $PlanOverViewDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PlanOverViewStateCopyWithImpl<$Res, $Val extends PlanOverViewState>
    implements $PlanOverViewStateCopyWith<$Res> {
  _$PlanOverViewStateCopyWithImpl(this._value, this._then);

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
              as PlanOverViewData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanOverViewDataCopyWith<$Res> get data {
    return $PlanOverViewDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PlanOverViewStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanOverViewData data});

  @override
  $PlanOverViewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PlanOverViewStateCopyWithImpl<$Res, _$_Initial>
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
              as PlanOverViewData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final PlanOverViewData data;

  @override
  String toString() {
    return 'PlanOverViewState.initial(data: $data)';
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
    required TResult Function(PlanOverViewData data) initial,
    required TResult Function(PlanOverViewData data) success,
    required TResult Function(PlanOverViewData data) loading,
    required TResult Function(PlanOverViewData data) getCurrentPlanSuccess,
    required TResult Function(PlanOverViewData data, String message)
        getCurrentPlanFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanOverViewData data)? initial,
    TResult? Function(PlanOverViewData data)? success,
    TResult? Function(PlanOverViewData data)? loading,
    TResult? Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult? Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanOverViewData data)? initial,
    TResult Function(PlanOverViewData data)? success,
    TResult Function(PlanOverViewData data)? loading,
    TResult Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
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
    required TResult Function(_GetCurrentPlanSuccess value)
        getCurrentPlanSuccess,
    required TResult Function(_GetCurrentPlanFailed value) getCurrentPlanFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult? Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlanOverViewState {
  const factory _Initial({required final PlanOverViewData data}) = _$_Initial;

  @override
  PlanOverViewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res>
    implements $PlanOverViewStateCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanOverViewData data});

  @override
  $PlanOverViewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$PlanOverViewStateCopyWithImpl<$Res, _$_Success>
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
              as PlanOverViewData,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.data});

  @override
  final PlanOverViewData data;

  @override
  String toString() {
    return 'PlanOverViewState.success(data: $data)';
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
    required TResult Function(PlanOverViewData data) initial,
    required TResult Function(PlanOverViewData data) success,
    required TResult Function(PlanOverViewData data) loading,
    required TResult Function(PlanOverViewData data) getCurrentPlanSuccess,
    required TResult Function(PlanOverViewData data, String message)
        getCurrentPlanFailed,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanOverViewData data)? initial,
    TResult? Function(PlanOverViewData data)? success,
    TResult? Function(PlanOverViewData data)? loading,
    TResult? Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult? Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanOverViewData data)? initial,
    TResult Function(PlanOverViewData data)? success,
    TResult Function(PlanOverViewData data)? loading,
    TResult Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
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
    required TResult Function(_GetCurrentPlanSuccess value)
        getCurrentPlanSuccess,
    required TResult Function(_GetCurrentPlanFailed value) getCurrentPlanFailed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult? Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PlanOverViewState {
  const factory _Success({required final PlanOverViewData data}) = _$_Success;

  @override
  PlanOverViewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $PlanOverViewStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanOverViewData data});

  @override
  $PlanOverViewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PlanOverViewStateCopyWithImpl<$Res, _$_Loading>
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
              as PlanOverViewData,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.data});

  @override
  final PlanOverViewData data;

  @override
  String toString() {
    return 'PlanOverViewState.loading(data: $data)';
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
    required TResult Function(PlanOverViewData data) initial,
    required TResult Function(PlanOverViewData data) success,
    required TResult Function(PlanOverViewData data) loading,
    required TResult Function(PlanOverViewData data) getCurrentPlanSuccess,
    required TResult Function(PlanOverViewData data, String message)
        getCurrentPlanFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanOverViewData data)? initial,
    TResult? Function(PlanOverViewData data)? success,
    TResult? Function(PlanOverViewData data)? loading,
    TResult? Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult? Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanOverViewData data)? initial,
    TResult Function(PlanOverViewData data)? success,
    TResult Function(PlanOverViewData data)? loading,
    TResult Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
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
    required TResult Function(_GetCurrentPlanSuccess value)
        getCurrentPlanSuccess,
    required TResult Function(_GetCurrentPlanFailed value) getCurrentPlanFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult? Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PlanOverViewState {
  const factory _Loading({required final PlanOverViewData data}) = _$_Loading;

  @override
  PlanOverViewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCurrentPlanSuccessCopyWith<$Res>
    implements $PlanOverViewStateCopyWith<$Res> {
  factory _$$_GetCurrentPlanSuccessCopyWith(_$_GetCurrentPlanSuccess value,
          $Res Function(_$_GetCurrentPlanSuccess) then) =
      __$$_GetCurrentPlanSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanOverViewData data});

  @override
  $PlanOverViewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCurrentPlanSuccessCopyWithImpl<$Res>
    extends _$PlanOverViewStateCopyWithImpl<$Res, _$_GetCurrentPlanSuccess>
    implements _$$_GetCurrentPlanSuccessCopyWith<$Res> {
  __$$_GetCurrentPlanSuccessCopyWithImpl(_$_GetCurrentPlanSuccess _value,
      $Res Function(_$_GetCurrentPlanSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetCurrentPlanSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanOverViewData,
    ));
  }
}

/// @nodoc

class _$_GetCurrentPlanSuccess implements _GetCurrentPlanSuccess {
  const _$_GetCurrentPlanSuccess({required this.data});

  @override
  final PlanOverViewData data;

  @override
  String toString() {
    return 'PlanOverViewState.getCurrentPlanSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrentPlanSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCurrentPlanSuccessCopyWith<_$_GetCurrentPlanSuccess> get copyWith =>
      __$$_GetCurrentPlanSuccessCopyWithImpl<_$_GetCurrentPlanSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanOverViewData data) initial,
    required TResult Function(PlanOverViewData data) success,
    required TResult Function(PlanOverViewData data) loading,
    required TResult Function(PlanOverViewData data) getCurrentPlanSuccess,
    required TResult Function(PlanOverViewData data, String message)
        getCurrentPlanFailed,
  }) {
    return getCurrentPlanSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanOverViewData data)? initial,
    TResult? Function(PlanOverViewData data)? success,
    TResult? Function(PlanOverViewData data)? loading,
    TResult? Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult? Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
  }) {
    return getCurrentPlanSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanOverViewData data)? initial,
    TResult Function(PlanOverViewData data)? success,
    TResult Function(PlanOverViewData data)? loading,
    TResult Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (getCurrentPlanSuccess != null) {
      return getCurrentPlanSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCurrentPlanSuccess value)
        getCurrentPlanSuccess,
    required TResult Function(_GetCurrentPlanFailed value) getCurrentPlanFailed,
  }) {
    return getCurrentPlanSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult? Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
  }) {
    return getCurrentPlanSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (getCurrentPlanSuccess != null) {
      return getCurrentPlanSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentPlanSuccess implements PlanOverViewState {
  const factory _GetCurrentPlanSuccess({required final PlanOverViewData data}) =
      _$_GetCurrentPlanSuccess;

  @override
  PlanOverViewData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetCurrentPlanSuccessCopyWith<_$_GetCurrentPlanSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCurrentPlanFailedCopyWith<$Res>
    implements $PlanOverViewStateCopyWith<$Res> {
  factory _$$_GetCurrentPlanFailedCopyWith(_$_GetCurrentPlanFailed value,
          $Res Function(_$_GetCurrentPlanFailed) then) =
      __$$_GetCurrentPlanFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanOverViewData data, String message});

  @override
  $PlanOverViewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCurrentPlanFailedCopyWithImpl<$Res>
    extends _$PlanOverViewStateCopyWithImpl<$Res, _$_GetCurrentPlanFailed>
    implements _$$_GetCurrentPlanFailedCopyWith<$Res> {
  __$$_GetCurrentPlanFailedCopyWithImpl(_$_GetCurrentPlanFailed _value,
      $Res Function(_$_GetCurrentPlanFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetCurrentPlanFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlanOverViewData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCurrentPlanFailed implements _GetCurrentPlanFailed {
  const _$_GetCurrentPlanFailed({required this.data, required this.message});

  @override
  final PlanOverViewData data;
  @override
  final String message;

  @override
  String toString() {
    return 'PlanOverViewState.getCurrentPlanFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCurrentPlanFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCurrentPlanFailedCopyWith<_$_GetCurrentPlanFailed> get copyWith =>
      __$$_GetCurrentPlanFailedCopyWithImpl<_$_GetCurrentPlanFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanOverViewData data) initial,
    required TResult Function(PlanOverViewData data) success,
    required TResult Function(PlanOverViewData data) loading,
    required TResult Function(PlanOverViewData data) getCurrentPlanSuccess,
    required TResult Function(PlanOverViewData data, String message)
        getCurrentPlanFailed,
  }) {
    return getCurrentPlanFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlanOverViewData data)? initial,
    TResult? Function(PlanOverViewData data)? success,
    TResult? Function(PlanOverViewData data)? loading,
    TResult? Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult? Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
  }) {
    return getCurrentPlanFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanOverViewData data)? initial,
    TResult Function(PlanOverViewData data)? success,
    TResult Function(PlanOverViewData data)? loading,
    TResult Function(PlanOverViewData data)? getCurrentPlanSuccess,
    TResult Function(PlanOverViewData data, String message)?
        getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (getCurrentPlanFailed != null) {
      return getCurrentPlanFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCurrentPlanSuccess value)
        getCurrentPlanSuccess,
    required TResult Function(_GetCurrentPlanFailed value) getCurrentPlanFailed,
  }) {
    return getCurrentPlanFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult? Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
  }) {
    return getCurrentPlanFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCurrentPlanSuccess value)? getCurrentPlanSuccess,
    TResult Function(_GetCurrentPlanFailed value)? getCurrentPlanFailed,
    required TResult orElse(),
  }) {
    if (getCurrentPlanFailed != null) {
      return getCurrentPlanFailed(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentPlanFailed implements PlanOverViewState {
  const factory _GetCurrentPlanFailed(
      {required final PlanOverViewData data,
      required final String message}) = _$_GetCurrentPlanFailed;

  @override
  PlanOverViewData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetCurrentPlanFailedCopyWith<_$_GetCurrentPlanFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
