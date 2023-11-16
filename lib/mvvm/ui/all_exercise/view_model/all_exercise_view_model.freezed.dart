// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_exercise_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllExerciseState {
  AllExerciseData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllExerciseData data) initial,
    required TResult Function(AllExerciseData data) loading,
    required TResult Function(AllExerciseData data) getExerciseSuccess,
    required TResult Function(AllExerciseData data, String message)
        getExerciseFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllExerciseData data)? initial,
    TResult? Function(AllExerciseData data)? loading,
    TResult? Function(AllExerciseData data)? getExerciseSuccess,
    TResult? Function(AllExerciseData data, String message)? getExerciseFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllExerciseData data)? initial,
    TResult Function(AllExerciseData data)? loading,
    TResult Function(AllExerciseData data)? getExerciseSuccess,
    TResult Function(AllExerciseData data, String message)? getExerciseFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseSuccess value) getExerciseSuccess,
    required TResult Function(_GetExerciseFailed value) getExerciseFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult? Function(_GetExerciseFailed value)? getExerciseFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult Function(_GetExerciseFailed value)? getExerciseFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllExerciseStateCopyWith<AllExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllExerciseStateCopyWith<$Res> {
  factory $AllExerciseStateCopyWith(
          AllExerciseState value, $Res Function(AllExerciseState) then) =
      _$AllExerciseStateCopyWithImpl<$Res, AllExerciseState>;
  @useResult
  $Res call({AllExerciseData data});

  $AllExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AllExerciseStateCopyWithImpl<$Res, $Val extends AllExerciseState>
    implements $AllExerciseStateCopyWith<$Res> {
  _$AllExerciseStateCopyWithImpl(this._value, this._then);

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
              as AllExerciseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllExerciseDataCopyWith<$Res> get data {
    return $AllExerciseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $AllExerciseStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllExerciseData data});

  @override
  $AllExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AllExerciseStateCopyWithImpl<$Res, _$_Initial>
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
              as AllExerciseData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AllExerciseData data;

  @override
  String toString() {
    return 'AllExerciseState.initial(data: $data)';
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
    required TResult Function(AllExerciseData data) initial,
    required TResult Function(AllExerciseData data) loading,
    required TResult Function(AllExerciseData data) getExerciseSuccess,
    required TResult Function(AllExerciseData data, String message)
        getExerciseFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllExerciseData data)? initial,
    TResult? Function(AllExerciseData data)? loading,
    TResult? Function(AllExerciseData data)? getExerciseSuccess,
    TResult? Function(AllExerciseData data, String message)? getExerciseFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllExerciseData data)? initial,
    TResult Function(AllExerciseData data)? loading,
    TResult Function(AllExerciseData data)? getExerciseSuccess,
    TResult Function(AllExerciseData data, String message)? getExerciseFailed,
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
    required TResult Function(_GetExerciseSuccess value) getExerciseSuccess,
    required TResult Function(_GetExerciseFailed value) getExerciseFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult? Function(_GetExerciseFailed value)? getExerciseFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult Function(_GetExerciseFailed value)? getExerciseFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AllExerciseState {
  const factory _Initial({required final AllExerciseData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  AllExerciseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $AllExerciseStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllExerciseData data});

  @override
  $AllExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AllExerciseStateCopyWithImpl<$Res, _$_Loading>
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
              as AllExerciseData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AllExerciseData data;

  @override
  String toString() {
    return 'AllExerciseState.loading(data: $data)';
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
    required TResult Function(AllExerciseData data) initial,
    required TResult Function(AllExerciseData data) loading,
    required TResult Function(AllExerciseData data) getExerciseSuccess,
    required TResult Function(AllExerciseData data, String message)
        getExerciseFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllExerciseData data)? initial,
    TResult? Function(AllExerciseData data)? loading,
    TResult? Function(AllExerciseData data)? getExerciseSuccess,
    TResult? Function(AllExerciseData data, String message)? getExerciseFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllExerciseData data)? initial,
    TResult Function(AllExerciseData data)? loading,
    TResult Function(AllExerciseData data)? getExerciseSuccess,
    TResult Function(AllExerciseData data, String message)? getExerciseFailed,
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
    required TResult Function(_GetExerciseSuccess value) getExerciseSuccess,
    required TResult Function(_GetExerciseFailed value) getExerciseFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult? Function(_GetExerciseFailed value)? getExerciseFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult Function(_GetExerciseFailed value)? getExerciseFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AllExerciseState {
  const factory _Loading({required final AllExerciseData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  AllExerciseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExerciseSuccessCopyWith<$Res>
    implements $AllExerciseStateCopyWith<$Res> {
  factory _$$_GetExerciseSuccessCopyWith(_$_GetExerciseSuccess value,
          $Res Function(_$_GetExerciseSuccess) then) =
      __$$_GetExerciseSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllExerciseData data});

  @override
  $AllExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetExerciseSuccessCopyWithImpl<$Res>
    extends _$AllExerciseStateCopyWithImpl<$Res, _$_GetExerciseSuccess>
    implements _$$_GetExerciseSuccessCopyWith<$Res> {
  __$$_GetExerciseSuccessCopyWithImpl(
      _$_GetExerciseSuccess _value, $Res Function(_$_GetExerciseSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetExerciseSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllExerciseData,
    ));
  }
}

/// @nodoc

class _$_GetExerciseSuccess extends _GetExerciseSuccess {
  const _$_GetExerciseSuccess({required this.data}) : super._();

  @override
  final AllExerciseData data;

  @override
  String toString() {
    return 'AllExerciseState.getExerciseSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExerciseSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExerciseSuccessCopyWith<_$_GetExerciseSuccess> get copyWith =>
      __$$_GetExerciseSuccessCopyWithImpl<_$_GetExerciseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllExerciseData data) initial,
    required TResult Function(AllExerciseData data) loading,
    required TResult Function(AllExerciseData data) getExerciseSuccess,
    required TResult Function(AllExerciseData data, String message)
        getExerciseFailed,
  }) {
    return getExerciseSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllExerciseData data)? initial,
    TResult? Function(AllExerciseData data)? loading,
    TResult? Function(AllExerciseData data)? getExerciseSuccess,
    TResult? Function(AllExerciseData data, String message)? getExerciseFailed,
  }) {
    return getExerciseSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllExerciseData data)? initial,
    TResult Function(AllExerciseData data)? loading,
    TResult Function(AllExerciseData data)? getExerciseSuccess,
    TResult Function(AllExerciseData data, String message)? getExerciseFailed,
    required TResult orElse(),
  }) {
    if (getExerciseSuccess != null) {
      return getExerciseSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseSuccess value) getExerciseSuccess,
    required TResult Function(_GetExerciseFailed value) getExerciseFailed,
  }) {
    return getExerciseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult? Function(_GetExerciseFailed value)? getExerciseFailed,
  }) {
    return getExerciseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult Function(_GetExerciseFailed value)? getExerciseFailed,
    required TResult orElse(),
  }) {
    if (getExerciseSuccess != null) {
      return getExerciseSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetExerciseSuccess extends AllExerciseState {
  const factory _GetExerciseSuccess({required final AllExerciseData data}) =
      _$_GetExerciseSuccess;
  const _GetExerciseSuccess._() : super._();

  @override
  AllExerciseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetExerciseSuccessCopyWith<_$_GetExerciseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExerciseFailedCopyWith<$Res>
    implements $AllExerciseStateCopyWith<$Res> {
  factory _$$_GetExerciseFailedCopyWith(_$_GetExerciseFailed value,
          $Res Function(_$_GetExerciseFailed) then) =
      __$$_GetExerciseFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllExerciseData data, String message});

  @override
  $AllExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetExerciseFailedCopyWithImpl<$Res>
    extends _$AllExerciseStateCopyWithImpl<$Res, _$_GetExerciseFailed>
    implements _$$_GetExerciseFailedCopyWith<$Res> {
  __$$_GetExerciseFailedCopyWithImpl(
      _$_GetExerciseFailed _value, $Res Function(_$_GetExerciseFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetExerciseFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllExerciseData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetExerciseFailed extends _GetExerciseFailed {
  const _$_GetExerciseFailed({required this.data, required this.message})
      : super._();

  @override
  final AllExerciseData data;
  @override
  final String message;

  @override
  String toString() {
    return 'AllExerciseState.getExerciseFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExerciseFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExerciseFailedCopyWith<_$_GetExerciseFailed> get copyWith =>
      __$$_GetExerciseFailedCopyWithImpl<_$_GetExerciseFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllExerciseData data) initial,
    required TResult Function(AllExerciseData data) loading,
    required TResult Function(AllExerciseData data) getExerciseSuccess,
    required TResult Function(AllExerciseData data, String message)
        getExerciseFailed,
  }) {
    return getExerciseFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllExerciseData data)? initial,
    TResult? Function(AllExerciseData data)? loading,
    TResult? Function(AllExerciseData data)? getExerciseSuccess,
    TResult? Function(AllExerciseData data, String message)? getExerciseFailed,
  }) {
    return getExerciseFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllExerciseData data)? initial,
    TResult Function(AllExerciseData data)? loading,
    TResult Function(AllExerciseData data)? getExerciseSuccess,
    TResult Function(AllExerciseData data, String message)? getExerciseFailed,
    required TResult orElse(),
  }) {
    if (getExerciseFailed != null) {
      return getExerciseFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseSuccess value) getExerciseSuccess,
    required TResult Function(_GetExerciseFailed value) getExerciseFailed,
  }) {
    return getExerciseFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult? Function(_GetExerciseFailed value)? getExerciseFailed,
  }) {
    return getExerciseFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseSuccess value)? getExerciseSuccess,
    TResult Function(_GetExerciseFailed value)? getExerciseFailed,
    required TResult orElse(),
  }) {
    if (getExerciseFailed != null) {
      return getExerciseFailed(this);
    }
    return orElse();
  }
}

abstract class _GetExerciseFailed extends AllExerciseState {
  const factory _GetExerciseFailed(
      {required final AllExerciseData data,
      required final String message}) = _$_GetExerciseFailed;
  const _GetExerciseFailed._() : super._();

  @override
  AllExerciseData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetExerciseFailedCopyWith<_$_GetExerciseFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
