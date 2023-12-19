// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_trac_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WooTrackState {
  WooTrackData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WooTrackStateCopyWith<WooTrackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WooTrackStateCopyWith<$Res> {
  factory $WooTrackStateCopyWith(
          WooTrackState value, $Res Function(WooTrackState) then) =
      _$WooTrackStateCopyWithImpl<$Res, WooTrackState>;
  @useResult
  $Res call({WooTrackData data});

  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class _$WooTrackStateCopyWithImpl<$Res, $Val extends WooTrackState>
    implements $WooTrackStateCopyWith<$Res> {
  _$WooTrackStateCopyWithImpl(this._value, this._then);

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
              as WooTrackData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WooTrackDataCopyWith<$Res> get data {
    return $WooTrackDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_Initial>
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
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.initial(data: $data)';
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
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
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
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends WooTrackState {
  const factory _Initial({required final WooTrackData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeExerciseSuccessCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_ChangeExerciseSuccessCopyWith(_$_ChangeExerciseSuccess value,
          $Res Function(_$_ChangeExerciseSuccess) then) =
      __$$_ChangeExerciseSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeExerciseSuccessCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_ChangeExerciseSuccess>
    implements _$$_ChangeExerciseSuccessCopyWith<$Res> {
  __$$_ChangeExerciseSuccessCopyWithImpl(_$_ChangeExerciseSuccess _value,
      $Res Function(_$_ChangeExerciseSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeExerciseSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_ChangeExerciseSuccess extends _ChangeExerciseSuccess {
  const _$_ChangeExerciseSuccess({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.changeExerciseSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeExerciseSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeExerciseSuccessCopyWith<_$_ChangeExerciseSuccess> get copyWith =>
      __$$_ChangeExerciseSuccessCopyWithImpl<_$_ChangeExerciseSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return changeExerciseSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return changeExerciseSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) {
    if (changeExerciseSuccess != null) {
      return changeExerciseSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return changeExerciseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return changeExerciseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (changeExerciseSuccess != null) {
      return changeExerciseSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeExerciseSuccess extends WooTrackState {
  const factory _ChangeExerciseSuccess({required final WooTrackData data}) =
      _$_ChangeExerciseSuccess;
  const _ChangeExerciseSuccess._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeExerciseSuccessCopyWith<_$_ChangeExerciseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedRoundCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_CompletedRoundCopyWith(
          _$_CompletedRound value, $Res Function(_$_CompletedRound) then) =
      __$$_CompletedRoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CompletedRoundCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_CompletedRound>
    implements _$$_CompletedRoundCopyWith<$Res> {
  __$$_CompletedRoundCopyWithImpl(
      _$_CompletedRound _value, $Res Function(_$_CompletedRound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CompletedRound(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_CompletedRound extends _CompletedRound {
  const _$_CompletedRound({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.completeRound(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletedRound &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletedRoundCopyWith<_$_CompletedRound> get copyWith =>
      __$$_CompletedRoundCopyWithImpl<_$_CompletedRound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return completeRound(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return completeRound?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) {
    if (completeRound != null) {
      return completeRound(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return completeRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return completeRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (completeRound != null) {
      return completeRound(this);
    }
    return orElse();
  }
}

abstract class _CompletedRound extends WooTrackState {
  const factory _CompletedRound({required final WooTrackData data}) =
      _$_CompletedRound;
  const _CompletedRound._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_CompletedRoundCopyWith<_$_CompletedRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayPauseSuccessCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_PlayPauseSuccessCopyWith(
          _$_PlayPauseSuccess value, $Res Function(_$_PlayPauseSuccess) then) =
      __$$_PlayPauseSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PlayPauseSuccessCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_PlayPauseSuccess>
    implements _$$_PlayPauseSuccessCopyWith<$Res> {
  __$$_PlayPauseSuccessCopyWithImpl(
      _$_PlayPauseSuccess _value, $Res Function(_$_PlayPauseSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_PlayPauseSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_PlayPauseSuccess extends _PlayPauseSuccess {
  const _$_PlayPauseSuccess({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.playPauseSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayPauseSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayPauseSuccessCopyWith<_$_PlayPauseSuccess> get copyWith =>
      __$$_PlayPauseSuccessCopyWithImpl<_$_PlayPauseSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return playPauseSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return playPauseSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) {
    if (playPauseSuccess != null) {
      return playPauseSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return playPauseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return playPauseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (playPauseSuccess != null) {
      return playPauseSuccess(this);
    }
    return orElse();
  }
}

abstract class _PlayPauseSuccess extends WooTrackState {
  const factory _PlayPauseSuccess({required final WooTrackData data}) =
      _$_PlayPauseSuccess;
  const _PlayPauseSuccess._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_PlayPauseSuccessCopyWith<_$_PlayPauseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPreviousSuccessCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_NextPreviousSuccessCopyWith(_$_NextPreviousSuccess value,
          $Res Function(_$_NextPreviousSuccess) then) =
      __$$_NextPreviousSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NextPreviousSuccessCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_NextPreviousSuccess>
    implements _$$_NextPreviousSuccessCopyWith<$Res> {
  __$$_NextPreviousSuccessCopyWithImpl(_$_NextPreviousSuccess _value,
      $Res Function(_$_NextPreviousSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_NextPreviousSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_NextPreviousSuccess extends _NextPreviousSuccess {
  const _$_NextPreviousSuccess({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.nextPreviousSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPreviousSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NextPreviousSuccessCopyWith<_$_NextPreviousSuccess> get copyWith =>
      __$$_NextPreviousSuccessCopyWithImpl<_$_NextPreviousSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return nextPreviousSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return nextPreviousSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) {
    if (nextPreviousSuccess != null) {
      return nextPreviousSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return nextPreviousSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return nextPreviousSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (nextPreviousSuccess != null) {
      return nextPreviousSuccess(this);
    }
    return orElse();
  }
}

abstract class _NextPreviousSuccess extends WooTrackState {
  const factory _NextPreviousSuccess({required final WooTrackData data}) =
      _$_NextPreviousSuccess;
  const _NextPreviousSuccess._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_NextPreviousSuccessCopyWith<_$_NextPreviousSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteSessionSuccessCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_CompleteSessionSuccessCopyWith(_$_CompleteSessionSuccess value,
          $Res Function(_$_CompleteSessionSuccess) then) =
      __$$_CompleteSessionSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CompleteSessionSuccessCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_CompleteSessionSuccess>
    implements _$$_CompleteSessionSuccessCopyWith<$Res> {
  __$$_CompleteSessionSuccessCopyWithImpl(_$_CompleteSessionSuccess _value,
      $Res Function(_$_CompleteSessionSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CompleteSessionSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_CompleteSessionSuccess extends _CompleteSessionSuccess {
  const _$_CompleteSessionSuccess({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.completeSessionSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteSessionSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteSessionSuccessCopyWith<_$_CompleteSessionSuccess> get copyWith =>
      __$$_CompleteSessionSuccessCopyWithImpl<_$_CompleteSessionSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return completeSessionSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return completeSessionSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) {
    if (completeSessionSuccess != null) {
      return completeSessionSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return completeSessionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return completeSessionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (completeSessionSuccess != null) {
      return completeSessionSuccess(this);
    }
    return orElse();
  }
}

abstract class _CompleteSessionSuccess extends WooTrackState {
  const factory _CompleteSessionSuccess({required final WooTrackData data}) =
      _$_CompleteSessionSuccess;
  const _CompleteSessionSuccess._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteSessionSuccessCopyWith<_$_CompleteSessionSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteSessionFailedCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_CompleteSessionFailedCopyWith(_$_CompleteSessionFailed value,
          $Res Function(_$_CompleteSessionFailed) then) =
      __$$_CompleteSessionFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data, String message});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CompleteSessionFailedCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_CompleteSessionFailed>
    implements _$$_CompleteSessionFailedCopyWith<$Res> {
  __$$_CompleteSessionFailedCopyWithImpl(_$_CompleteSessionFailed _value,
      $Res Function(_$_CompleteSessionFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_CompleteSessionFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WooTrackData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CompleteSessionFailed extends _CompleteSessionFailed {
  const _$_CompleteSessionFailed({required this.data, required this.message})
      : super._();

  @override
  final WooTrackData data;
  @override
  final String message;

  @override
  String toString() {
    return 'WooTrackState.completeSessionFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteSessionFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteSessionFailedCopyWith<_$_CompleteSessionFailed> get copyWith =>
      __$$_CompleteSessionFailedCopyWithImpl<_$_CompleteSessionFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return completeSessionFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return completeSessionFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
    required TResult orElse(),
  }) {
    if (completeSessionFailed != null) {
      return completeSessionFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return completeSessionFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return completeSessionFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (completeSessionFailed != null) {
      return completeSessionFailed(this);
    }
    return orElse();
  }
}

abstract class _CompleteSessionFailed extends WooTrackState {
  const factory _CompleteSessionFailed(
      {required final WooTrackData data,
      required final String message}) = _$_CompleteSessionFailed;
  const _CompleteSessionFailed._() : super._();

  @override
  WooTrackData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CompleteSessionFailedCopyWith<_$_CompleteSessionFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $WooTrackStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WooTrackData data});

  @override
  $WooTrackDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$WooTrackStateCopyWithImpl<$Res, _$_Loading>
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
              as WooTrackData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final WooTrackData data;

  @override
  String toString() {
    return 'WooTrackState.loading(data: $data)';
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
    required TResult Function(WooTrackData data) initial,
    required TResult Function(WooTrackData data) changeExerciseSuccess,
    required TResult Function(WooTrackData data) completeRound,
    required TResult Function(WooTrackData data) playPauseSuccess,
    required TResult Function(WooTrackData data) nextPreviousSuccess,
    required TResult Function(WooTrackData data) completeSessionSuccess,
    required TResult Function(WooTrackData data, String message)
        completeSessionFailed,
    required TResult Function(WooTrackData data) loading,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
    TResult? Function(WooTrackData data)? nextPreviousSuccess,
    TResult? Function(WooTrackData data)? completeSessionSuccess,
    TResult? Function(WooTrackData data, String message)? completeSessionFailed,
    TResult? Function(WooTrackData data)? loading,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
    TResult Function(WooTrackData data)? nextPreviousSuccess,
    TResult Function(WooTrackData data)? completeSessionSuccess,
    TResult Function(WooTrackData data, String message)? completeSessionFailed,
    TResult Function(WooTrackData data)? loading,
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
    required TResult Function(_ChangeExerciseSuccess value)
        changeExerciseSuccess,
    required TResult Function(_CompletedRound value) completeRound,
    required TResult Function(_PlayPauseSuccess value) playPauseSuccess,
    required TResult Function(_NextPreviousSuccess value) nextPreviousSuccess,
    required TResult Function(_CompleteSessionSuccess value)
        completeSessionSuccess,
    required TResult Function(_CompleteSessionFailed value)
        completeSessionFailed,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult? Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult? Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult? Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
    TResult Function(_NextPreviousSuccess value)? nextPreviousSuccess,
    TResult Function(_CompleteSessionSuccess value)? completeSessionSuccess,
    TResult Function(_CompleteSessionFailed value)? completeSessionFailed,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends WooTrackState {
  const factory _Loading({required final WooTrackData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
