// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsDetailState {
  NewsDetailData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsDetailStateCopyWith<NewsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailStateCopyWith<$Res> {
  factory $NewsDetailStateCopyWith(
          NewsDetailState value, $Res Function(NewsDetailState) then) =
      _$NewsDetailStateCopyWithImpl<$Res, NewsDetailState>;
  @useResult
  $Res call({NewsDetailData data});

  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsDetailStateCopyWithImpl<$Res, $Val extends NewsDetailState>
    implements $NewsDetailStateCopyWith<$Res> {
  _$NewsDetailStateCopyWithImpl(this._value, this._then);

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
              as NewsDetailData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsDetailDataCopyWith<$Res> get data {
    return $NewsDetailDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsDetailData data});

  @override
  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$_Initial>
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
              as NewsDetailData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final NewsDetailData data;

  @override
  String toString() {
    return 'NewsDetailState.initial(data: $data)';
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
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
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
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends NewsDetailState {
  const factory _Initial({required final NewsDetailData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  NewsDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsDetailData data});

  @override
  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$_Loading>
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
              as NewsDetailData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final NewsDetailData data;

  @override
  String toString() {
    return 'NewsDetailState.loading(data: $data)';
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
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
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
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends NewsDetailState {
  const factory _Loading({required final NewsDetailData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  NewsDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetNewsByIdSuccessCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$_GetNewsByIdSuccessCopyWith(_$_GetNewsByIdSuccess value,
          $Res Function(_$_GetNewsByIdSuccess) then) =
      __$$_GetNewsByIdSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsDetailData data});

  @override
  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetNewsByIdSuccessCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$_GetNewsByIdSuccess>
    implements _$$_GetNewsByIdSuccessCopyWith<$Res> {
  __$$_GetNewsByIdSuccessCopyWithImpl(
      _$_GetNewsByIdSuccess _value, $Res Function(_$_GetNewsByIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetNewsByIdSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsDetailData,
    ));
  }
}

/// @nodoc

class _$_GetNewsByIdSuccess extends _GetNewsByIdSuccess {
  const _$_GetNewsByIdSuccess({required this.data}) : super._();

  @override
  final NewsDetailData data;

  @override
  String toString() {
    return 'NewsDetailState.getNewsByIdSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNewsByIdSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNewsByIdSuccessCopyWith<_$_GetNewsByIdSuccess> get copyWith =>
      __$$_GetNewsByIdSuccessCopyWithImpl<_$_GetNewsByIdSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) {
    return getNewsByIdSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) {
    return getNewsByIdSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getNewsByIdSuccess != null) {
      return getNewsByIdSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) {
    return getNewsByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) {
    return getNewsByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getNewsByIdSuccess != null) {
      return getNewsByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetNewsByIdSuccess extends NewsDetailState {
  const factory _GetNewsByIdSuccess({required final NewsDetailData data}) =
      _$_GetNewsByIdSuccess;
  const _GetNewsByIdSuccess._() : super._();

  @override
  NewsDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetNewsByIdSuccessCopyWith<_$_GetNewsByIdSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetNewsByIdFailedCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$_GetNewsByIdFailedCopyWith(_$_GetNewsByIdFailed value,
          $Res Function(_$_GetNewsByIdFailed) then) =
      __$$_GetNewsByIdFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsDetailData data, String message});

  @override
  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetNewsByIdFailedCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$_GetNewsByIdFailed>
    implements _$$_GetNewsByIdFailedCopyWith<$Res> {
  __$$_GetNewsByIdFailedCopyWithImpl(
      _$_GetNewsByIdFailed _value, $Res Function(_$_GetNewsByIdFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetNewsByIdFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetNewsByIdFailed extends _GetNewsByIdFailed {
  const _$_GetNewsByIdFailed({required this.data, required this.message})
      : super._();

  @override
  final NewsDetailData data;
  @override
  final String message;

  @override
  String toString() {
    return 'NewsDetailState.getNewsByIdFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNewsByIdFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNewsByIdFailedCopyWith<_$_GetNewsByIdFailed> get copyWith =>
      __$$_GetNewsByIdFailedCopyWithImpl<_$_GetNewsByIdFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) {
    return getNewsByIdFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) {
    return getNewsByIdFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getNewsByIdFailed != null) {
      return getNewsByIdFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) {
    return getNewsByIdFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) {
    return getNewsByIdFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getNewsByIdFailed != null) {
      return getNewsByIdFailed(this);
    }
    return orElse();
  }
}

abstract class _GetNewsByIdFailed extends NewsDetailState {
  const factory _GetNewsByIdFailed(
      {required final NewsDetailData data,
      required final String message}) = _$_GetNewsByIdFailed;
  const _GetNewsByIdFailed._() : super._();

  @override
  NewsDetailData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetNewsByIdFailedCopyWith<_$_GetNewsByIdFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTopNewsSuccessCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$_GetTopNewsSuccessCopyWith(_$_GetTopNewsSuccess value,
          $Res Function(_$_GetTopNewsSuccess) then) =
      __$$_GetTopNewsSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsDetailData data});

  @override
  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetTopNewsSuccessCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$_GetTopNewsSuccess>
    implements _$$_GetTopNewsSuccessCopyWith<$Res> {
  __$$_GetTopNewsSuccessCopyWithImpl(
      _$_GetTopNewsSuccess _value, $Res Function(_$_GetTopNewsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetTopNewsSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsDetailData,
    ));
  }
}

/// @nodoc

class _$_GetTopNewsSuccess extends _GetTopNewsSuccess {
  const _$_GetTopNewsSuccess({required this.data}) : super._();

  @override
  final NewsDetailData data;

  @override
  String toString() {
    return 'NewsDetailState.getTopNewsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTopNewsSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTopNewsSuccessCopyWith<_$_GetTopNewsSuccess> get copyWith =>
      __$$_GetTopNewsSuccessCopyWithImpl<_$_GetTopNewsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) {
    return getTopNewsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) {
    return getTopNewsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getTopNewsSuccess != null) {
      return getTopNewsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) {
    return getTopNewsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) {
    return getTopNewsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getTopNewsSuccess != null) {
      return getTopNewsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetTopNewsSuccess extends NewsDetailState {
  const factory _GetTopNewsSuccess({required final NewsDetailData data}) =
      _$_GetTopNewsSuccess;
  const _GetTopNewsSuccess._() : super._();

  @override
  NewsDetailData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetTopNewsSuccessCopyWith<_$_GetTopNewsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTopNewsFailedCopyWith<$Res>
    implements $NewsDetailStateCopyWith<$Res> {
  factory _$$_GetTopNewsFailedCopyWith(
          _$_GetTopNewsFailed value, $Res Function(_$_GetTopNewsFailed) then) =
      __$$_GetTopNewsFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsDetailData data, String message});

  @override
  $NewsDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetTopNewsFailedCopyWithImpl<$Res>
    extends _$NewsDetailStateCopyWithImpl<$Res, _$_GetTopNewsFailed>
    implements _$$_GetTopNewsFailedCopyWith<$Res> {
  __$$_GetTopNewsFailedCopyWithImpl(
      _$_GetTopNewsFailed _value, $Res Function(_$_GetTopNewsFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetTopNewsFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsDetailData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTopNewsFailed extends _GetTopNewsFailed {
  const _$_GetTopNewsFailed({required this.data, required this.message})
      : super._();

  @override
  final NewsDetailData data;
  @override
  final String message;

  @override
  String toString() {
    return 'NewsDetailState.getTopNewsFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTopNewsFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTopNewsFailedCopyWith<_$_GetTopNewsFailed> get copyWith =>
      __$$_GetTopNewsFailedCopyWithImpl<_$_GetTopNewsFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsDetailData data) initial,
    required TResult Function(NewsDetailData data) loading,
    required TResult Function(NewsDetailData data) getNewsByIdSuccess,
    required TResult Function(NewsDetailData data, String message)
        getNewsByIdFailed,
    required TResult Function(NewsDetailData data) getTopNewsSuccess,
    required TResult Function(NewsDetailData data, String message)
        getTopNewsFailed,
  }) {
    return getTopNewsFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsDetailData data)? initial,
    TResult? Function(NewsDetailData data)? loading,
    TResult? Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult? Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult? Function(NewsDetailData data)? getTopNewsSuccess,
    TResult? Function(NewsDetailData data, String message)? getTopNewsFailed,
  }) {
    return getTopNewsFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsDetailData data)? initial,
    TResult Function(NewsDetailData data)? loading,
    TResult Function(NewsDetailData data)? getNewsByIdSuccess,
    TResult Function(NewsDetailData data, String message)? getNewsByIdFailed,
    TResult Function(NewsDetailData data)? getTopNewsSuccess,
    TResult Function(NewsDetailData data, String message)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getTopNewsFailed != null) {
      return getTopNewsFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetNewsByIdSuccess value) getNewsByIdSuccess,
    required TResult Function(_GetNewsByIdFailed value) getNewsByIdFailed,
    required TResult Function(_GetTopNewsSuccess value) getTopNewsSuccess,
    required TResult Function(_GetTopNewsFailed value) getTopNewsFailed,
  }) {
    return getTopNewsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult? Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult? Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult? Function(_GetTopNewsFailed value)? getTopNewsFailed,
  }) {
    return getTopNewsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetNewsByIdSuccess value)? getNewsByIdSuccess,
    TResult Function(_GetNewsByIdFailed value)? getNewsByIdFailed,
    TResult Function(_GetTopNewsSuccess value)? getTopNewsSuccess,
    TResult Function(_GetTopNewsFailed value)? getTopNewsFailed,
    required TResult orElse(),
  }) {
    if (getTopNewsFailed != null) {
      return getTopNewsFailed(this);
    }
    return orElse();
  }
}

abstract class _GetTopNewsFailed extends NewsDetailState {
  const factory _GetTopNewsFailed(
      {required final NewsDetailData data,
      required final String message}) = _$_GetTopNewsFailed;
  const _GetTopNewsFailed._() : super._();

  @override
  NewsDetailData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetTopNewsFailedCopyWith<_$_GetTopNewsFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
