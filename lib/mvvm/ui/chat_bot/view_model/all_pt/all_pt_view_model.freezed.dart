// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_pt_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllPtState {
  AllPtData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllPtData data) initial,
    required TResult Function(AllPtData data) loading,
    required TResult Function(AllPtData data) getPtSuccess,
    required TResult Function(AllPtData data, String message) getPtFailed,
    required TResult Function(AllPtData data) changeTrainerTypeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllPtData data)? initial,
    TResult? Function(AllPtData data)? loading,
    TResult? Function(AllPtData data)? getPtSuccess,
    TResult? Function(AllPtData data, String message)? getPtFailed,
    TResult? Function(AllPtData data)? changeTrainerTypeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllPtData data)? initial,
    TResult Function(AllPtData data)? loading,
    TResult Function(AllPtData data)? getPtSuccess,
    TResult Function(AllPtData data, String message)? getPtFailed,
    TResult Function(AllPtData data)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPtSuccess value) getPtSuccess,
    required TResult Function(_GetPtFailed value) getPtFailed,
    required TResult Function(_ChangeTrainerTypeSuccess value)
        changeTrainerTypeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPtSuccess value)? getPtSuccess,
    TResult? Function(_GetPtFailed value)? getPtFailed,
    TResult? Function(_ChangeTrainerTypeSuccess value)?
        changeTrainerTypeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPtSuccess value)? getPtSuccess,
    TResult Function(_GetPtFailed value)? getPtFailed,
    TResult Function(_ChangeTrainerTypeSuccess value)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllPtStateCopyWith<AllPtState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPtStateCopyWith<$Res> {
  factory $AllPtStateCopyWith(
          AllPtState value, $Res Function(AllPtState) then) =
      _$AllPtStateCopyWithImpl<$Res, AllPtState>;
  @useResult
  $Res call({AllPtData data});

  $AllPtDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AllPtStateCopyWithImpl<$Res, $Val extends AllPtState>
    implements $AllPtStateCopyWith<$Res> {
  _$AllPtStateCopyWithImpl(this._value, this._then);

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
              as AllPtData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllPtDataCopyWith<$Res> get data {
    return $AllPtDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AllPtStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllPtData data});

  @override
  $AllPtDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AllPtStateCopyWithImpl<$Res, _$_Initial>
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
              as AllPtData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final AllPtData data;

  @override
  String toString() {
    return 'AllPtState.initial(data: $data)';
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
    required TResult Function(AllPtData data) initial,
    required TResult Function(AllPtData data) loading,
    required TResult Function(AllPtData data) getPtSuccess,
    required TResult Function(AllPtData data, String message) getPtFailed,
    required TResult Function(AllPtData data) changeTrainerTypeSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllPtData data)? initial,
    TResult? Function(AllPtData data)? loading,
    TResult? Function(AllPtData data)? getPtSuccess,
    TResult? Function(AllPtData data, String message)? getPtFailed,
    TResult? Function(AllPtData data)? changeTrainerTypeSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllPtData data)? initial,
    TResult Function(AllPtData data)? loading,
    TResult Function(AllPtData data)? getPtSuccess,
    TResult Function(AllPtData data, String message)? getPtFailed,
    TResult Function(AllPtData data)? changeTrainerTypeSuccess,
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
    required TResult Function(_GetPtSuccess value) getPtSuccess,
    required TResult Function(_GetPtFailed value) getPtFailed,
    required TResult Function(_ChangeTrainerTypeSuccess value)
        changeTrainerTypeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPtSuccess value)? getPtSuccess,
    TResult? Function(_GetPtFailed value)? getPtFailed,
    TResult? Function(_ChangeTrainerTypeSuccess value)?
        changeTrainerTypeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPtSuccess value)? getPtSuccess,
    TResult Function(_GetPtFailed value)? getPtFailed,
    TResult Function(_ChangeTrainerTypeSuccess value)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AllPtState {
  const factory _Initial({required final AllPtData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  AllPtData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $AllPtStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllPtData data});

  @override
  $AllPtDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AllPtStateCopyWithImpl<$Res, _$_Loading>
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
              as AllPtData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final AllPtData data;

  @override
  String toString() {
    return 'AllPtState.loading(data: $data)';
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
    required TResult Function(AllPtData data) initial,
    required TResult Function(AllPtData data) loading,
    required TResult Function(AllPtData data) getPtSuccess,
    required TResult Function(AllPtData data, String message) getPtFailed,
    required TResult Function(AllPtData data) changeTrainerTypeSuccess,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllPtData data)? initial,
    TResult? Function(AllPtData data)? loading,
    TResult? Function(AllPtData data)? getPtSuccess,
    TResult? Function(AllPtData data, String message)? getPtFailed,
    TResult? Function(AllPtData data)? changeTrainerTypeSuccess,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllPtData data)? initial,
    TResult Function(AllPtData data)? loading,
    TResult Function(AllPtData data)? getPtSuccess,
    TResult Function(AllPtData data, String message)? getPtFailed,
    TResult Function(AllPtData data)? changeTrainerTypeSuccess,
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
    required TResult Function(_GetPtSuccess value) getPtSuccess,
    required TResult Function(_GetPtFailed value) getPtFailed,
    required TResult Function(_ChangeTrainerTypeSuccess value)
        changeTrainerTypeSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPtSuccess value)? getPtSuccess,
    TResult? Function(_GetPtFailed value)? getPtFailed,
    TResult? Function(_ChangeTrainerTypeSuccess value)?
        changeTrainerTypeSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPtSuccess value)? getPtSuccess,
    TResult Function(_GetPtFailed value)? getPtFailed,
    TResult Function(_ChangeTrainerTypeSuccess value)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AllPtState {
  const factory _Loading({required final AllPtData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  AllPtData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPtSuccessCopyWith<$Res>
    implements $AllPtStateCopyWith<$Res> {
  factory _$$_GetPtSuccessCopyWith(
          _$_GetPtSuccess value, $Res Function(_$_GetPtSuccess) then) =
      __$$_GetPtSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllPtData data});

  @override
  $AllPtDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPtSuccessCopyWithImpl<$Res>
    extends _$AllPtStateCopyWithImpl<$Res, _$_GetPtSuccess>
    implements _$$_GetPtSuccessCopyWith<$Res> {
  __$$_GetPtSuccessCopyWithImpl(
      _$_GetPtSuccess _value, $Res Function(_$_GetPtSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetPtSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllPtData,
    ));
  }
}

/// @nodoc

class _$_GetPtSuccess extends _GetPtSuccess {
  const _$_GetPtSuccess({required this.data}) : super._();

  @override
  final AllPtData data;

  @override
  String toString() {
    return 'AllPtState.getPtSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPtSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPtSuccessCopyWith<_$_GetPtSuccess> get copyWith =>
      __$$_GetPtSuccessCopyWithImpl<_$_GetPtSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllPtData data) initial,
    required TResult Function(AllPtData data) loading,
    required TResult Function(AllPtData data) getPtSuccess,
    required TResult Function(AllPtData data, String message) getPtFailed,
    required TResult Function(AllPtData data) changeTrainerTypeSuccess,
  }) {
    return getPtSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllPtData data)? initial,
    TResult? Function(AllPtData data)? loading,
    TResult? Function(AllPtData data)? getPtSuccess,
    TResult? Function(AllPtData data, String message)? getPtFailed,
    TResult? Function(AllPtData data)? changeTrainerTypeSuccess,
  }) {
    return getPtSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllPtData data)? initial,
    TResult Function(AllPtData data)? loading,
    TResult Function(AllPtData data)? getPtSuccess,
    TResult Function(AllPtData data, String message)? getPtFailed,
    TResult Function(AllPtData data)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (getPtSuccess != null) {
      return getPtSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPtSuccess value) getPtSuccess,
    required TResult Function(_GetPtFailed value) getPtFailed,
    required TResult Function(_ChangeTrainerTypeSuccess value)
        changeTrainerTypeSuccess,
  }) {
    return getPtSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPtSuccess value)? getPtSuccess,
    TResult? Function(_GetPtFailed value)? getPtFailed,
    TResult? Function(_ChangeTrainerTypeSuccess value)?
        changeTrainerTypeSuccess,
  }) {
    return getPtSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPtSuccess value)? getPtSuccess,
    TResult Function(_GetPtFailed value)? getPtFailed,
    TResult Function(_ChangeTrainerTypeSuccess value)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (getPtSuccess != null) {
      return getPtSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPtSuccess extends AllPtState {
  const factory _GetPtSuccess({required final AllPtData data}) =
      _$_GetPtSuccess;
  const _GetPtSuccess._() : super._();

  @override
  AllPtData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetPtSuccessCopyWith<_$_GetPtSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPtFailedCopyWith<$Res>
    implements $AllPtStateCopyWith<$Res> {
  factory _$$_GetPtFailedCopyWith(
          _$_GetPtFailed value, $Res Function(_$_GetPtFailed) then) =
      __$$_GetPtFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllPtData data, String message});

  @override
  $AllPtDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetPtFailedCopyWithImpl<$Res>
    extends _$AllPtStateCopyWithImpl<$Res, _$_GetPtFailed>
    implements _$$_GetPtFailedCopyWith<$Res> {
  __$$_GetPtFailedCopyWithImpl(
      _$_GetPtFailed _value, $Res Function(_$_GetPtFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetPtFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllPtData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetPtFailed extends _GetPtFailed {
  const _$_GetPtFailed({required this.data, required this.message}) : super._();

  @override
  final AllPtData data;
  @override
  final String message;

  @override
  String toString() {
    return 'AllPtState.getPtFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPtFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPtFailedCopyWith<_$_GetPtFailed> get copyWith =>
      __$$_GetPtFailedCopyWithImpl<_$_GetPtFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllPtData data) initial,
    required TResult Function(AllPtData data) loading,
    required TResult Function(AllPtData data) getPtSuccess,
    required TResult Function(AllPtData data, String message) getPtFailed,
    required TResult Function(AllPtData data) changeTrainerTypeSuccess,
  }) {
    return getPtFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllPtData data)? initial,
    TResult? Function(AllPtData data)? loading,
    TResult? Function(AllPtData data)? getPtSuccess,
    TResult? Function(AllPtData data, String message)? getPtFailed,
    TResult? Function(AllPtData data)? changeTrainerTypeSuccess,
  }) {
    return getPtFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllPtData data)? initial,
    TResult Function(AllPtData data)? loading,
    TResult Function(AllPtData data)? getPtSuccess,
    TResult Function(AllPtData data, String message)? getPtFailed,
    TResult Function(AllPtData data)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (getPtFailed != null) {
      return getPtFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPtSuccess value) getPtSuccess,
    required TResult Function(_GetPtFailed value) getPtFailed,
    required TResult Function(_ChangeTrainerTypeSuccess value)
        changeTrainerTypeSuccess,
  }) {
    return getPtFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPtSuccess value)? getPtSuccess,
    TResult? Function(_GetPtFailed value)? getPtFailed,
    TResult? Function(_ChangeTrainerTypeSuccess value)?
        changeTrainerTypeSuccess,
  }) {
    return getPtFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPtSuccess value)? getPtSuccess,
    TResult Function(_GetPtFailed value)? getPtFailed,
    TResult Function(_ChangeTrainerTypeSuccess value)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (getPtFailed != null) {
      return getPtFailed(this);
    }
    return orElse();
  }
}

abstract class _GetPtFailed extends AllPtState {
  const factory _GetPtFailed(
      {required final AllPtData data,
      required final String message}) = _$_GetPtFailed;
  const _GetPtFailed._() : super._();

  @override
  AllPtData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetPtFailedCopyWith<_$_GetPtFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTrainerTypeSuccessCopyWith<$Res>
    implements $AllPtStateCopyWith<$Res> {
  factory _$$_ChangeTrainerTypeSuccessCopyWith(
          _$_ChangeTrainerTypeSuccess value,
          $Res Function(_$_ChangeTrainerTypeSuccess) then) =
      __$$_ChangeTrainerTypeSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllPtData data});

  @override
  $AllPtDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeTrainerTypeSuccessCopyWithImpl<$Res>
    extends _$AllPtStateCopyWithImpl<$Res, _$_ChangeTrainerTypeSuccess>
    implements _$$_ChangeTrainerTypeSuccessCopyWith<$Res> {
  __$$_ChangeTrainerTypeSuccessCopyWithImpl(_$_ChangeTrainerTypeSuccess _value,
      $Res Function(_$_ChangeTrainerTypeSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeTrainerTypeSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AllPtData,
    ));
  }
}

/// @nodoc

class _$_ChangeTrainerTypeSuccess extends _ChangeTrainerTypeSuccess {
  const _$_ChangeTrainerTypeSuccess({required this.data}) : super._();

  @override
  final AllPtData data;

  @override
  String toString() {
    return 'AllPtState.changeTrainerTypeSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTrainerTypeSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTrainerTypeSuccessCopyWith<_$_ChangeTrainerTypeSuccess>
      get copyWith => __$$_ChangeTrainerTypeSuccessCopyWithImpl<
          _$_ChangeTrainerTypeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AllPtData data) initial,
    required TResult Function(AllPtData data) loading,
    required TResult Function(AllPtData data) getPtSuccess,
    required TResult Function(AllPtData data, String message) getPtFailed,
    required TResult Function(AllPtData data) changeTrainerTypeSuccess,
  }) {
    return changeTrainerTypeSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AllPtData data)? initial,
    TResult? Function(AllPtData data)? loading,
    TResult? Function(AllPtData data)? getPtSuccess,
    TResult? Function(AllPtData data, String message)? getPtFailed,
    TResult? Function(AllPtData data)? changeTrainerTypeSuccess,
  }) {
    return changeTrainerTypeSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AllPtData data)? initial,
    TResult Function(AllPtData data)? loading,
    TResult Function(AllPtData data)? getPtSuccess,
    TResult Function(AllPtData data, String message)? getPtFailed,
    TResult Function(AllPtData data)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (changeTrainerTypeSuccess != null) {
      return changeTrainerTypeSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPtSuccess value) getPtSuccess,
    required TResult Function(_GetPtFailed value) getPtFailed,
    required TResult Function(_ChangeTrainerTypeSuccess value)
        changeTrainerTypeSuccess,
  }) {
    return changeTrainerTypeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPtSuccess value)? getPtSuccess,
    TResult? Function(_GetPtFailed value)? getPtFailed,
    TResult? Function(_ChangeTrainerTypeSuccess value)?
        changeTrainerTypeSuccess,
  }) {
    return changeTrainerTypeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPtSuccess value)? getPtSuccess,
    TResult Function(_GetPtFailed value)? getPtFailed,
    TResult Function(_ChangeTrainerTypeSuccess value)? changeTrainerTypeSuccess,
    required TResult orElse(),
  }) {
    if (changeTrainerTypeSuccess != null) {
      return changeTrainerTypeSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeTrainerTypeSuccess extends AllPtState {
  const factory _ChangeTrainerTypeSuccess({required final AllPtData data}) =
      _$_ChangeTrainerTypeSuccess;
  const _ChangeTrainerTypeSuccess._() : super._();

  @override
  AllPtData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeTrainerTypeSuccessCopyWith<_$_ChangeTrainerTypeSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
