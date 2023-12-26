// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bot_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateBotState {
  CreateBotData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateBotData data) initial,
    required TResult Function(CreateBotData data) changeBotImageSuccess,
    required TResult Function(CreateBotData data) changeBehaviorTabSuccess,
    required TResult Function(CreateBotData data) changeModelSuccess,
    required TResult Function(CreateBotData data) changeSourceFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateBotData data)? initial,
    TResult? Function(CreateBotData data)? changeBotImageSuccess,
    TResult? Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult? Function(CreateBotData data)? changeModelSuccess,
    TResult? Function(CreateBotData data)? changeSourceFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateBotData data)? initial,
    TResult Function(CreateBotData data)? changeBotImageSuccess,
    TResult Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult Function(CreateBotData data)? changeModelSuccess,
    TResult Function(CreateBotData data)? changeSourceFileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeBotImageSuccess value)
        changeBotImageSuccess,
    required TResult Function(_ChangeBehaviorTabSuccess value)
        changeBehaviorTabSuccess,
    required TResult Function(_ChangeModelSuccess value) changeModelSuccess,
    required TResult Function(_ChangeSourceFileSuccess value)
        changeSourceFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult? Function(_ChangeBehaviorTabSuccess value)?
        changeBehaviorTabSuccess,
    TResult? Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult? Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult Function(_ChangeBehaviorTabSuccess value)? changeBehaviorTabSuccess,
    TResult Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateBotStateCopyWith<CreateBotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBotStateCopyWith<$Res> {
  factory $CreateBotStateCopyWith(
          CreateBotState value, $Res Function(CreateBotState) then) =
      _$CreateBotStateCopyWithImpl<$Res, CreateBotState>;
  @useResult
  $Res call({CreateBotData data});

  $CreateBotDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateBotStateCopyWithImpl<$Res, $Val extends CreateBotState>
    implements $CreateBotStateCopyWith<$Res> {
  _$CreateBotStateCopyWithImpl(this._value, this._then);

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
              as CreateBotData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateBotDataCopyWith<$Res> get data {
    return $CreateBotDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CreateBotStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateBotData data});

  @override
  $CreateBotDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CreateBotStateCopyWithImpl<$Res, _$_Initial>
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
              as CreateBotData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final CreateBotData data;

  @override
  String toString() {
    return 'CreateBotState.initial(data: $data)';
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
    required TResult Function(CreateBotData data) initial,
    required TResult Function(CreateBotData data) changeBotImageSuccess,
    required TResult Function(CreateBotData data) changeBehaviorTabSuccess,
    required TResult Function(CreateBotData data) changeModelSuccess,
    required TResult Function(CreateBotData data) changeSourceFileSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateBotData data)? initial,
    TResult? Function(CreateBotData data)? changeBotImageSuccess,
    TResult? Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult? Function(CreateBotData data)? changeModelSuccess,
    TResult? Function(CreateBotData data)? changeSourceFileSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateBotData data)? initial,
    TResult Function(CreateBotData data)? changeBotImageSuccess,
    TResult Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult Function(CreateBotData data)? changeModelSuccess,
    TResult Function(CreateBotData data)? changeSourceFileSuccess,
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
    required TResult Function(_ChangeBotImageSuccess value)
        changeBotImageSuccess,
    required TResult Function(_ChangeBehaviorTabSuccess value)
        changeBehaviorTabSuccess,
    required TResult Function(_ChangeModelSuccess value) changeModelSuccess,
    required TResult Function(_ChangeSourceFileSuccess value)
        changeSourceFileSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult? Function(_ChangeBehaviorTabSuccess value)?
        changeBehaviorTabSuccess,
    TResult? Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult? Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult Function(_ChangeBehaviorTabSuccess value)? changeBehaviorTabSuccess,
    TResult Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateBotState {
  const factory _Initial({required final CreateBotData data}) = _$_Initial;

  @override
  CreateBotData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeBotImageSuccessCopyWith<$Res>
    implements $CreateBotStateCopyWith<$Res> {
  factory _$$_ChangeBotImageSuccessCopyWith(_$_ChangeBotImageSuccess value,
          $Res Function(_$_ChangeBotImageSuccess) then) =
      __$$_ChangeBotImageSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateBotData data});

  @override
  $CreateBotDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeBotImageSuccessCopyWithImpl<$Res>
    extends _$CreateBotStateCopyWithImpl<$Res, _$_ChangeBotImageSuccess>
    implements _$$_ChangeBotImageSuccessCopyWith<$Res> {
  __$$_ChangeBotImageSuccessCopyWithImpl(_$_ChangeBotImageSuccess _value,
      $Res Function(_$_ChangeBotImageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeBotImageSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBotData,
    ));
  }
}

/// @nodoc

class _$_ChangeBotImageSuccess implements _ChangeBotImageSuccess {
  const _$_ChangeBotImageSuccess({required this.data});

  @override
  final CreateBotData data;

  @override
  String toString() {
    return 'CreateBotState.changeBotImageSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeBotImageSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeBotImageSuccessCopyWith<_$_ChangeBotImageSuccess> get copyWith =>
      __$$_ChangeBotImageSuccessCopyWithImpl<_$_ChangeBotImageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateBotData data) initial,
    required TResult Function(CreateBotData data) changeBotImageSuccess,
    required TResult Function(CreateBotData data) changeBehaviorTabSuccess,
    required TResult Function(CreateBotData data) changeModelSuccess,
    required TResult Function(CreateBotData data) changeSourceFileSuccess,
  }) {
    return changeBotImageSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateBotData data)? initial,
    TResult? Function(CreateBotData data)? changeBotImageSuccess,
    TResult? Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult? Function(CreateBotData data)? changeModelSuccess,
    TResult? Function(CreateBotData data)? changeSourceFileSuccess,
  }) {
    return changeBotImageSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateBotData data)? initial,
    TResult Function(CreateBotData data)? changeBotImageSuccess,
    TResult Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult Function(CreateBotData data)? changeModelSuccess,
    TResult Function(CreateBotData data)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeBotImageSuccess != null) {
      return changeBotImageSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeBotImageSuccess value)
        changeBotImageSuccess,
    required TResult Function(_ChangeBehaviorTabSuccess value)
        changeBehaviorTabSuccess,
    required TResult Function(_ChangeModelSuccess value) changeModelSuccess,
    required TResult Function(_ChangeSourceFileSuccess value)
        changeSourceFileSuccess,
  }) {
    return changeBotImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult? Function(_ChangeBehaviorTabSuccess value)?
        changeBehaviorTabSuccess,
    TResult? Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult? Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
  }) {
    return changeBotImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult Function(_ChangeBehaviorTabSuccess value)? changeBehaviorTabSuccess,
    TResult Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeBotImageSuccess != null) {
      return changeBotImageSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeBotImageSuccess implements CreateBotState {
  const factory _ChangeBotImageSuccess({required final CreateBotData data}) =
      _$_ChangeBotImageSuccess;

  @override
  CreateBotData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeBotImageSuccessCopyWith<_$_ChangeBotImageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeBehaviorTabSuccessCopyWith<$Res>
    implements $CreateBotStateCopyWith<$Res> {
  factory _$$_ChangeBehaviorTabSuccessCopyWith(
          _$_ChangeBehaviorTabSuccess value,
          $Res Function(_$_ChangeBehaviorTabSuccess) then) =
      __$$_ChangeBehaviorTabSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateBotData data});

  @override
  $CreateBotDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeBehaviorTabSuccessCopyWithImpl<$Res>
    extends _$CreateBotStateCopyWithImpl<$Res, _$_ChangeBehaviorTabSuccess>
    implements _$$_ChangeBehaviorTabSuccessCopyWith<$Res> {
  __$$_ChangeBehaviorTabSuccessCopyWithImpl(_$_ChangeBehaviorTabSuccess _value,
      $Res Function(_$_ChangeBehaviorTabSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeBehaviorTabSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBotData,
    ));
  }
}

/// @nodoc

class _$_ChangeBehaviorTabSuccess implements _ChangeBehaviorTabSuccess {
  const _$_ChangeBehaviorTabSuccess({required this.data});

  @override
  final CreateBotData data;

  @override
  String toString() {
    return 'CreateBotState.changeBehaviorTabSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeBehaviorTabSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeBehaviorTabSuccessCopyWith<_$_ChangeBehaviorTabSuccess>
      get copyWith => __$$_ChangeBehaviorTabSuccessCopyWithImpl<
          _$_ChangeBehaviorTabSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateBotData data) initial,
    required TResult Function(CreateBotData data) changeBotImageSuccess,
    required TResult Function(CreateBotData data) changeBehaviorTabSuccess,
    required TResult Function(CreateBotData data) changeModelSuccess,
    required TResult Function(CreateBotData data) changeSourceFileSuccess,
  }) {
    return changeBehaviorTabSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateBotData data)? initial,
    TResult? Function(CreateBotData data)? changeBotImageSuccess,
    TResult? Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult? Function(CreateBotData data)? changeModelSuccess,
    TResult? Function(CreateBotData data)? changeSourceFileSuccess,
  }) {
    return changeBehaviorTabSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateBotData data)? initial,
    TResult Function(CreateBotData data)? changeBotImageSuccess,
    TResult Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult Function(CreateBotData data)? changeModelSuccess,
    TResult Function(CreateBotData data)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeBehaviorTabSuccess != null) {
      return changeBehaviorTabSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeBotImageSuccess value)
        changeBotImageSuccess,
    required TResult Function(_ChangeBehaviorTabSuccess value)
        changeBehaviorTabSuccess,
    required TResult Function(_ChangeModelSuccess value) changeModelSuccess,
    required TResult Function(_ChangeSourceFileSuccess value)
        changeSourceFileSuccess,
  }) {
    return changeBehaviorTabSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult? Function(_ChangeBehaviorTabSuccess value)?
        changeBehaviorTabSuccess,
    TResult? Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult? Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
  }) {
    return changeBehaviorTabSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult Function(_ChangeBehaviorTabSuccess value)? changeBehaviorTabSuccess,
    TResult Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeBehaviorTabSuccess != null) {
      return changeBehaviorTabSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeBehaviorTabSuccess implements CreateBotState {
  const factory _ChangeBehaviorTabSuccess({required final CreateBotData data}) =
      _$_ChangeBehaviorTabSuccess;

  @override
  CreateBotData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeBehaviorTabSuccessCopyWith<_$_ChangeBehaviorTabSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeModelSuccessCopyWith<$Res>
    implements $CreateBotStateCopyWith<$Res> {
  factory _$$_ChangeModelSuccessCopyWith(_$_ChangeModelSuccess value,
          $Res Function(_$_ChangeModelSuccess) then) =
      __$$_ChangeModelSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateBotData data});

  @override
  $CreateBotDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeModelSuccessCopyWithImpl<$Res>
    extends _$CreateBotStateCopyWithImpl<$Res, _$_ChangeModelSuccess>
    implements _$$_ChangeModelSuccessCopyWith<$Res> {
  __$$_ChangeModelSuccessCopyWithImpl(
      _$_ChangeModelSuccess _value, $Res Function(_$_ChangeModelSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeModelSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBotData,
    ));
  }
}

/// @nodoc

class _$_ChangeModelSuccess implements _ChangeModelSuccess {
  const _$_ChangeModelSuccess({required this.data});

  @override
  final CreateBotData data;

  @override
  String toString() {
    return 'CreateBotState.changeModelSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeModelSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeModelSuccessCopyWith<_$_ChangeModelSuccess> get copyWith =>
      __$$_ChangeModelSuccessCopyWithImpl<_$_ChangeModelSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateBotData data) initial,
    required TResult Function(CreateBotData data) changeBotImageSuccess,
    required TResult Function(CreateBotData data) changeBehaviorTabSuccess,
    required TResult Function(CreateBotData data) changeModelSuccess,
    required TResult Function(CreateBotData data) changeSourceFileSuccess,
  }) {
    return changeModelSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateBotData data)? initial,
    TResult? Function(CreateBotData data)? changeBotImageSuccess,
    TResult? Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult? Function(CreateBotData data)? changeModelSuccess,
    TResult? Function(CreateBotData data)? changeSourceFileSuccess,
  }) {
    return changeModelSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateBotData data)? initial,
    TResult Function(CreateBotData data)? changeBotImageSuccess,
    TResult Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult Function(CreateBotData data)? changeModelSuccess,
    TResult Function(CreateBotData data)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeModelSuccess != null) {
      return changeModelSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeBotImageSuccess value)
        changeBotImageSuccess,
    required TResult Function(_ChangeBehaviorTabSuccess value)
        changeBehaviorTabSuccess,
    required TResult Function(_ChangeModelSuccess value) changeModelSuccess,
    required TResult Function(_ChangeSourceFileSuccess value)
        changeSourceFileSuccess,
  }) {
    return changeModelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult? Function(_ChangeBehaviorTabSuccess value)?
        changeBehaviorTabSuccess,
    TResult? Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult? Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
  }) {
    return changeModelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult Function(_ChangeBehaviorTabSuccess value)? changeBehaviorTabSuccess,
    TResult Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeModelSuccess != null) {
      return changeModelSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeModelSuccess implements CreateBotState {
  const factory _ChangeModelSuccess({required final CreateBotData data}) =
      _$_ChangeModelSuccess;

  @override
  CreateBotData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeModelSuccessCopyWith<_$_ChangeModelSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSourceFileSuccessCopyWith<$Res>
    implements $CreateBotStateCopyWith<$Res> {
  factory _$$_ChangeSourceFileSuccessCopyWith(_$_ChangeSourceFileSuccess value,
          $Res Function(_$_ChangeSourceFileSuccess) then) =
      __$$_ChangeSourceFileSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateBotData data});

  @override
  $CreateBotDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeSourceFileSuccessCopyWithImpl<$Res>
    extends _$CreateBotStateCopyWithImpl<$Res, _$_ChangeSourceFileSuccess>
    implements _$$_ChangeSourceFileSuccessCopyWith<$Res> {
  __$$_ChangeSourceFileSuccessCopyWithImpl(_$_ChangeSourceFileSuccess _value,
      $Res Function(_$_ChangeSourceFileSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeSourceFileSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBotData,
    ));
  }
}

/// @nodoc

class _$_ChangeSourceFileSuccess implements _ChangeSourceFileSuccess {
  const _$_ChangeSourceFileSuccess({required this.data});

  @override
  final CreateBotData data;

  @override
  String toString() {
    return 'CreateBotState.changeSourceFileSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSourceFileSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSourceFileSuccessCopyWith<_$_ChangeSourceFileSuccess>
      get copyWith =>
          __$$_ChangeSourceFileSuccessCopyWithImpl<_$_ChangeSourceFileSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateBotData data) initial,
    required TResult Function(CreateBotData data) changeBotImageSuccess,
    required TResult Function(CreateBotData data) changeBehaviorTabSuccess,
    required TResult Function(CreateBotData data) changeModelSuccess,
    required TResult Function(CreateBotData data) changeSourceFileSuccess,
  }) {
    return changeSourceFileSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateBotData data)? initial,
    TResult? Function(CreateBotData data)? changeBotImageSuccess,
    TResult? Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult? Function(CreateBotData data)? changeModelSuccess,
    TResult? Function(CreateBotData data)? changeSourceFileSuccess,
  }) {
    return changeSourceFileSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateBotData data)? initial,
    TResult Function(CreateBotData data)? changeBotImageSuccess,
    TResult Function(CreateBotData data)? changeBehaviorTabSuccess,
    TResult Function(CreateBotData data)? changeModelSuccess,
    TResult Function(CreateBotData data)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeSourceFileSuccess != null) {
      return changeSourceFileSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeBotImageSuccess value)
        changeBotImageSuccess,
    required TResult Function(_ChangeBehaviorTabSuccess value)
        changeBehaviorTabSuccess,
    required TResult Function(_ChangeModelSuccess value) changeModelSuccess,
    required TResult Function(_ChangeSourceFileSuccess value)
        changeSourceFileSuccess,
  }) {
    return changeSourceFileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult? Function(_ChangeBehaviorTabSuccess value)?
        changeBehaviorTabSuccess,
    TResult? Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult? Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
  }) {
    return changeSourceFileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeBotImageSuccess value)? changeBotImageSuccess,
    TResult Function(_ChangeBehaviorTabSuccess value)? changeBehaviorTabSuccess,
    TResult Function(_ChangeModelSuccess value)? changeModelSuccess,
    TResult Function(_ChangeSourceFileSuccess value)? changeSourceFileSuccess,
    required TResult orElse(),
  }) {
    if (changeSourceFileSuccess != null) {
      return changeSourceFileSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeSourceFileSuccess implements CreateBotState {
  const factory _ChangeSourceFileSuccess({required final CreateBotData data}) =
      _$_ChangeSourceFileSuccess;

  @override
  CreateBotData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeSourceFileSuccessCopyWith<_$_ChangeSourceFileSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
