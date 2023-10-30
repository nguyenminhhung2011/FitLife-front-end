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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WooTrackData data)? initial,
    TResult? Function(WooTrackData data)? changeExerciseSuccess,
    TResult? Function(WooTrackData data)? completeRound,
    TResult? Function(WooTrackData data)? playPauseSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WooTrackData data)? initial,
    TResult Function(WooTrackData data)? changeExerciseSuccess,
    TResult Function(WooTrackData data)? completeRound,
    TResult Function(WooTrackData data)? playPauseSuccess,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult? Function(_CompletedRound value)? completeRound,
    TResult? Function(_PlayPauseSuccess value)? playPauseSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeExerciseSuccess value)? changeExerciseSuccess,
    TResult Function(_CompletedRound value)? completeRound,
    TResult Function(_PlayPauseSuccess value)? playPauseSuccess,
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

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WooTrackState {
  const factory _Initial({required final WooTrackData data}) = _$_Initial;

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

class _$_ChangeExerciseSuccess implements _ChangeExerciseSuccess {
  const _$_ChangeExerciseSuccess({required this.data});

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
    required TResult orElse(),
  }) {
    if (changeExerciseSuccess != null) {
      return changeExerciseSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeExerciseSuccess implements WooTrackState {
  const factory _ChangeExerciseSuccess({required final WooTrackData data}) =
      _$_ChangeExerciseSuccess;

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

class _$_CompletedRound implements _CompletedRound {
  const _$_CompletedRound({required this.data});

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
    required TResult orElse(),
  }) {
    if (completeRound != null) {
      return completeRound(this);
    }
    return orElse();
  }
}

abstract class _CompletedRound implements WooTrackState {
  const factory _CompletedRound({required final WooTrackData data}) =
      _$_CompletedRound;

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

class _$_PlayPauseSuccess implements _PlayPauseSuccess {
  const _$_PlayPauseSuccess({required this.data});

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
    required TResult orElse(),
  }) {
    if (playPauseSuccess != null) {
      return playPauseSuccess(this);
    }
    return orElse();
  }
}

abstract class _PlayPauseSuccess implements WooTrackState {
  const factory _PlayPauseSuccess({required final WooTrackData data}) =
      _$_PlayPauseSuccess;

  @override
  WooTrackData get data;
  @override
  @JsonKey(ignore: true)
  _$$_PlayPauseSuccessCopyWith<_$_PlayPauseSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
