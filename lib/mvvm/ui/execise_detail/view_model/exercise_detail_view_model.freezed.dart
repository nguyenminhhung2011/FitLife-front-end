// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseDetailState {
  ExerciseDetailData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExerciseDetailData data) initial,
    required TResult Function(ExerciseDetailData data) loading,
    required TResult Function(ExerciseDetailData data) getExerciseByIdSuccess,
    required TResult Function(ExerciseDetailData data, String message)
        getExerciseByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExerciseDetailData data)? initial,
    TResult? Function(ExerciseDetailData data)? loading,
    TResult? Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult? Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExerciseDetailData data)? initial,
    TResult Function(ExerciseDetailData data)? loading,
    TResult Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseByIdSuccess value)
        getExerciseByIdSuccess,
    required TResult Function(_GetExerciseByIdFailed value)
        getExerciseByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult? Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseDetailStateCopyWith<ExerciseDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDetailStateCopyWith<$Res> {
  factory $ExerciseDetailStateCopyWith(
          ExerciseDetailState value, $Res Function(ExerciseDetailState) then) =
      _$ExerciseDetailStateCopyWithImpl<$Res, ExerciseDetailState>;
  @useResult
  $Res call({ExerciseDetailData data});

  $ExerciseDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ExerciseDetailStateCopyWithImpl<$Res, $Val extends ExerciseDetailState>
    implements $ExerciseDetailStateCopyWith<$Res> {
  _$ExerciseDetailStateCopyWithImpl(this._value, this._then);

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
              as ExerciseDetailData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseDetailDataCopyWith<$Res> get data {
    return $ExerciseDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ExerciseDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseDetailData data});

  @override
  $ExerciseDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ExerciseDetailStateCopyWithImpl<$Res, _$_Initial>
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
              as ExerciseDetailData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ExerciseDetailData data;

  @override
  String toString() {
    return 'ExerciseDetailState.initial(data: $data)';
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
    required TResult Function(ExerciseDetailData data) initial,
    required TResult Function(ExerciseDetailData data) loading,
    required TResult Function(ExerciseDetailData data) getExerciseByIdSuccess,
    required TResult Function(ExerciseDetailData data, String message)
        getExerciseByIdFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExerciseDetailData data)? initial,
    TResult? Function(ExerciseDetailData data)? loading,
    TResult? Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult? Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExerciseDetailData data)? initial,
    TResult Function(ExerciseDetailData data)? loading,
    TResult Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
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
    required TResult Function(_GetExerciseByIdSuccess value)
        getExerciseByIdSuccess,
    required TResult Function(_GetExerciseByIdFailed value)
        getExerciseByIdFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult? Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ExerciseDetailState {
  const factory _Initial({required final ExerciseDetailData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  ExerciseDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ExerciseDetailStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseDetailData data});

  @override
  $ExerciseDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ExerciseDetailStateCopyWithImpl<$Res, _$_Loading>
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
              as ExerciseDetailData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ExerciseDetailData data;

  @override
  String toString() {
    return 'ExerciseDetailState.loading(data: $data)';
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
    required TResult Function(ExerciseDetailData data) initial,
    required TResult Function(ExerciseDetailData data) loading,
    required TResult Function(ExerciseDetailData data) getExerciseByIdSuccess,
    required TResult Function(ExerciseDetailData data, String message)
        getExerciseByIdFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExerciseDetailData data)? initial,
    TResult? Function(ExerciseDetailData data)? loading,
    TResult? Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult? Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExerciseDetailData data)? initial,
    TResult Function(ExerciseDetailData data)? loading,
    TResult Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
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
    required TResult Function(_GetExerciseByIdSuccess value)
        getExerciseByIdSuccess,
    required TResult Function(_GetExerciseByIdFailed value)
        getExerciseByIdFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult? Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ExerciseDetailState {
  const factory _Loading({required final ExerciseDetailData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  ExerciseDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExerciseByIdSuccessCopyWith<$Res>
    implements $ExerciseDetailStateCopyWith<$Res> {
  factory _$$_GetExerciseByIdSuccessCopyWith(_$_GetExerciseByIdSuccess value,
          $Res Function(_$_GetExerciseByIdSuccess) then) =
      __$$_GetExerciseByIdSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseDetailData data});

  @override
  $ExerciseDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetExerciseByIdSuccessCopyWithImpl<$Res>
    extends _$ExerciseDetailStateCopyWithImpl<$Res, _$_GetExerciseByIdSuccess>
    implements _$$_GetExerciseByIdSuccessCopyWith<$Res> {
  __$$_GetExerciseByIdSuccessCopyWithImpl(_$_GetExerciseByIdSuccess _value,
      $Res Function(_$_GetExerciseByIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetExerciseByIdSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExerciseDetailData,
    ));
  }
}

/// @nodoc

class _$_GetExerciseByIdSuccess extends _GetExerciseByIdSuccess {
  const _$_GetExerciseByIdSuccess({required this.data}) : super._();

  @override
  final ExerciseDetailData data;

  @override
  String toString() {
    return 'ExerciseDetailState.getExerciseByIdSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExerciseByIdSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExerciseByIdSuccessCopyWith<_$_GetExerciseByIdSuccess> get copyWith =>
      __$$_GetExerciseByIdSuccessCopyWithImpl<_$_GetExerciseByIdSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExerciseDetailData data) initial,
    required TResult Function(ExerciseDetailData data) loading,
    required TResult Function(ExerciseDetailData data) getExerciseByIdSuccess,
    required TResult Function(ExerciseDetailData data, String message)
        getExerciseByIdFailed,
  }) {
    return getExerciseByIdSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExerciseDetailData data)? initial,
    TResult? Function(ExerciseDetailData data)? loading,
    TResult? Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult? Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
  }) {
    return getExerciseByIdSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExerciseDetailData data)? initial,
    TResult Function(ExerciseDetailData data)? loading,
    TResult Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
    required TResult orElse(),
  }) {
    if (getExerciseByIdSuccess != null) {
      return getExerciseByIdSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseByIdSuccess value)
        getExerciseByIdSuccess,
    required TResult Function(_GetExerciseByIdFailed value)
        getExerciseByIdFailed,
  }) {
    return getExerciseByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult? Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
  }) {
    return getExerciseByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
    required TResult orElse(),
  }) {
    if (getExerciseByIdSuccess != null) {
      return getExerciseByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetExerciseByIdSuccess extends ExerciseDetailState {
  const factory _GetExerciseByIdSuccess(
      {required final ExerciseDetailData data}) = _$_GetExerciseByIdSuccess;
  const _GetExerciseByIdSuccess._() : super._();

  @override
  ExerciseDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetExerciseByIdSuccessCopyWith<_$_GetExerciseByIdSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExerciseByIdFailedCopyWith<$Res>
    implements $ExerciseDetailStateCopyWith<$Res> {
  factory _$$_GetExerciseByIdFailedCopyWith(_$_GetExerciseByIdFailed value,
          $Res Function(_$_GetExerciseByIdFailed) then) =
      __$$_GetExerciseByIdFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseDetailData data, String message});

  @override
  $ExerciseDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetExerciseByIdFailedCopyWithImpl<$Res>
    extends _$ExerciseDetailStateCopyWithImpl<$Res, _$_GetExerciseByIdFailed>
    implements _$$_GetExerciseByIdFailedCopyWith<$Res> {
  __$$_GetExerciseByIdFailedCopyWithImpl(_$_GetExerciseByIdFailed _value,
      $Res Function(_$_GetExerciseByIdFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetExerciseByIdFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExerciseDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetExerciseByIdFailed extends _GetExerciseByIdFailed {
  const _$_GetExerciseByIdFailed({required this.data, required this.message})
      : super._();

  @override
  final ExerciseDetailData data;
  @override
  final String message;

  @override
  String toString() {
    return 'ExerciseDetailState.getExerciseByIdFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExerciseByIdFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExerciseByIdFailedCopyWith<_$_GetExerciseByIdFailed> get copyWith =>
      __$$_GetExerciseByIdFailedCopyWithImpl<_$_GetExerciseByIdFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExerciseDetailData data) initial,
    required TResult Function(ExerciseDetailData data) loading,
    required TResult Function(ExerciseDetailData data) getExerciseByIdSuccess,
    required TResult Function(ExerciseDetailData data, String message)
        getExerciseByIdFailed,
  }) {
    return getExerciseByIdFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExerciseDetailData data)? initial,
    TResult? Function(ExerciseDetailData data)? loading,
    TResult? Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult? Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
  }) {
    return getExerciseByIdFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExerciseDetailData data)? initial,
    TResult Function(ExerciseDetailData data)? loading,
    TResult Function(ExerciseDetailData data)? getExerciseByIdSuccess,
    TResult Function(ExerciseDetailData data, String message)?
        getExerciseByIdFailed,
    required TResult orElse(),
  }) {
    if (getExerciseByIdFailed != null) {
      return getExerciseByIdFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseByIdSuccess value)
        getExerciseByIdSuccess,
    required TResult Function(_GetExerciseByIdFailed value)
        getExerciseByIdFailed,
  }) {
    return getExerciseByIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult? Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
  }) {
    return getExerciseByIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseByIdSuccess value)? getExerciseByIdSuccess,
    TResult Function(_GetExerciseByIdFailed value)? getExerciseByIdFailed,
    required TResult orElse(),
  }) {
    if (getExerciseByIdFailed != null) {
      return getExerciseByIdFailed(this);
    }
    return orElse();
  }
}

abstract class _GetExerciseByIdFailed extends ExerciseDetailState {
  const factory _GetExerciseByIdFailed(
      {required final ExerciseDetailData data,
      required final String message}) = _$_GetExerciseByIdFailed;
  const _GetExerciseByIdFailed._() : super._();

  @override
  ExerciseDetailData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetExerciseByIdFailedCopyWith<_$_GetExerciseByIdFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
