// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_chat_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainChatState {
  MainChatData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainChatStateCopyWith<MainChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainChatStateCopyWith<$Res> {
  factory $MainChatStateCopyWith(
          MainChatState value, $Res Function(MainChatState) then) =
      _$MainChatStateCopyWithImpl<$Res, MainChatState>;
  @useResult
  $Res call({MainChatData data});

  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainChatStateCopyWithImpl<$Res, $Val extends MainChatState>
    implements $MainChatStateCopyWith<$Res> {
  _$MainChatStateCopyWithImpl(this._value, this._then);

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
              as MainChatData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainChatDataCopyWith<$Res> get data {
    return $MainChatDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_Initial>
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
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.data});

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.initial(data: $data)';
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
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
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
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainChatState {
  const factory _Initial({required final MainChatData data}) = _$_Initial;

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTabSuccessCopyWith<$Res>
    implements $MainChatStateCopyWith<$Res> {
  factory _$$_ChangeTabSuccessCopyWith(
          _$_ChangeTabSuccess value, $Res Function(_$_ChangeTabSuccess) then) =
      __$$_ChangeTabSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainChatData data});

  @override
  $MainChatDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangeTabSuccessCopyWithImpl<$Res>
    extends _$MainChatStateCopyWithImpl<$Res, _$_ChangeTabSuccess>
    implements _$$_ChangeTabSuccessCopyWith<$Res> {
  __$$_ChangeTabSuccessCopyWithImpl(
      _$_ChangeTabSuccess _value, $Res Function(_$_ChangeTabSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeTabSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainChatData,
    ));
  }
}

/// @nodoc

class _$_ChangeTabSuccess implements _ChangeTabSuccess {
  const _$_ChangeTabSuccess({required this.data});

  @override
  final MainChatData data;

  @override
  String toString() {
    return 'MainChatState.changeTabSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTabSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTabSuccessCopyWith<_$_ChangeTabSuccess> get copyWith =>
      __$$_ChangeTabSuccessCopyWithImpl<_$_ChangeTabSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainChatData data) initial,
    required TResult Function(MainChatData data) changeTabSuccess,
  }) {
    return changeTabSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainChatData data)? initial,
    TResult? Function(MainChatData data)? changeTabSuccess,
  }) {
    return changeTabSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainChatData data)? initial,
    TResult Function(MainChatData data)? changeTabSuccess,
    required TResult orElse(),
  }) {
    if (changeTabSuccess != null) {
      return changeTabSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeTabSuccess value) changeTabSuccess,
  }) {
    return changeTabSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeTabSuccess value)? changeTabSuccess,
  }) {
    return changeTabSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeTabSuccess value)? changeTabSuccess,
    required TResult orElse(),
  }) {
    if (changeTabSuccess != null) {
      return changeTabSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabSuccess implements MainChatState {
  const factory _ChangeTabSuccess({required final MainChatData data}) =
      _$_ChangeTabSuccess;

  @override
  MainChatData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeTabSuccessCopyWith<_$_ChangeTabSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
