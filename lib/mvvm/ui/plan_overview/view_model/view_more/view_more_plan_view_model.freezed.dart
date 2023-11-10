// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_more_plan_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewMorePlanState {
  ViewMorePlanData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewMorePlanData data) initial,
    required TResult Function(ViewMorePlanData data) selectDateSuccess,
    required TResult Function(ViewMorePlanData data) loading,
    required TResult Function(ViewMorePlanData data) getItemsSuccess,
    required TResult Function(ViewMorePlanData data, String message)
        getItemFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewMorePlanData data)? initial,
    TResult? Function(ViewMorePlanData data)? selectDateSuccess,
    TResult? Function(ViewMorePlanData data)? loading,
    TResult? Function(ViewMorePlanData data)? getItemsSuccess,
    TResult? Function(ViewMorePlanData data, String message)? getItemFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewMorePlanData data)? initial,
    TResult Function(ViewMorePlanData data)? selectDateSuccess,
    TResult Function(ViewMorePlanData data)? loading,
    TResult Function(ViewMorePlanData data)? getItemsSuccess,
    TResult Function(ViewMorePlanData data, String message)? getItemFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectDateSuccess value) selectDateSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetItemSuccess value) getItemsSuccess,
    required TResult Function(_GetItemFailed value) getItemFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetItemSuccess value)? getItemsSuccess,
    TResult? Function(_GetItemFailed value)? getItemFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetItemSuccess value)? getItemsSuccess,
    TResult Function(_GetItemFailed value)? getItemFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewMorePlanStateCopyWith<ViewMorePlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewMorePlanStateCopyWith<$Res> {
  factory $ViewMorePlanStateCopyWith(
          ViewMorePlanState value, $Res Function(ViewMorePlanState) then) =
      _$ViewMorePlanStateCopyWithImpl<$Res, ViewMorePlanState>;
  @useResult
  $Res call({ViewMorePlanData data});

  $ViewMorePlanDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ViewMorePlanStateCopyWithImpl<$Res, $Val extends ViewMorePlanState>
    implements $ViewMorePlanStateCopyWith<$Res> {
  _$ViewMorePlanStateCopyWithImpl(this._value, this._then);

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
              as ViewMorePlanData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewMorePlanDataCopyWith<$Res> get data {
    return $ViewMorePlanDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ViewMorePlanStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewMorePlanData data});

  @override
  $ViewMorePlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ViewMorePlanStateCopyWithImpl<$Res, _$_Initial>
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
              as ViewMorePlanData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final ViewMorePlanData data;

  @override
  String toString() {
    return 'ViewMorePlanState.initial(data: $data)';
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
    required TResult Function(ViewMorePlanData data) initial,
    required TResult Function(ViewMorePlanData data) selectDateSuccess,
    required TResult Function(ViewMorePlanData data) loading,
    required TResult Function(ViewMorePlanData data) getItemsSuccess,
    required TResult Function(ViewMorePlanData data, String message)
        getItemFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewMorePlanData data)? initial,
    TResult? Function(ViewMorePlanData data)? selectDateSuccess,
    TResult? Function(ViewMorePlanData data)? loading,
    TResult? Function(ViewMorePlanData data)? getItemsSuccess,
    TResult? Function(ViewMorePlanData data, String message)? getItemFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewMorePlanData data)? initial,
    TResult Function(ViewMorePlanData data)? selectDateSuccess,
    TResult Function(ViewMorePlanData data)? loading,
    TResult Function(ViewMorePlanData data)? getItemsSuccess,
    TResult Function(ViewMorePlanData data, String message)? getItemFailed,
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
    required TResult Function(_SelectDateSuccess value) selectDateSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetItemSuccess value) getItemsSuccess,
    required TResult Function(_GetItemFailed value) getItemFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetItemSuccess value)? getItemsSuccess,
    TResult? Function(_GetItemFailed value)? getItemFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetItemSuccess value)? getItemsSuccess,
    TResult Function(_GetItemFailed value)? getItemFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ViewMorePlanState {
  const factory _Initial({required final ViewMorePlanData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  ViewMorePlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectDateSuccessCopyWith<$Res>
    implements $ViewMorePlanStateCopyWith<$Res> {
  factory _$$_SelectDateSuccessCopyWith(_$_SelectDateSuccess value,
          $Res Function(_$_SelectDateSuccess) then) =
      __$$_SelectDateSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewMorePlanData data});

  @override
  $ViewMorePlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SelectDateSuccessCopyWithImpl<$Res>
    extends _$ViewMorePlanStateCopyWithImpl<$Res, _$_SelectDateSuccess>
    implements _$$_SelectDateSuccessCopyWith<$Res> {
  __$$_SelectDateSuccessCopyWithImpl(
      _$_SelectDateSuccess _value, $Res Function(_$_SelectDateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SelectDateSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewMorePlanData,
    ));
  }
}

/// @nodoc

class _$_SelectDateSuccess extends _SelectDateSuccess {
  const _$_SelectDateSuccess({required this.data}) : super._();

  @override
  final ViewMorePlanData data;

  @override
  String toString() {
    return 'ViewMorePlanState.selectDateSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectDateSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectDateSuccessCopyWith<_$_SelectDateSuccess> get copyWith =>
      __$$_SelectDateSuccessCopyWithImpl<_$_SelectDateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewMorePlanData data) initial,
    required TResult Function(ViewMorePlanData data) selectDateSuccess,
    required TResult Function(ViewMorePlanData data) loading,
    required TResult Function(ViewMorePlanData data) getItemsSuccess,
    required TResult Function(ViewMorePlanData data, String message)
        getItemFailed,
  }) {
    return selectDateSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewMorePlanData data)? initial,
    TResult? Function(ViewMorePlanData data)? selectDateSuccess,
    TResult? Function(ViewMorePlanData data)? loading,
    TResult? Function(ViewMorePlanData data)? getItemsSuccess,
    TResult? Function(ViewMorePlanData data, String message)? getItemFailed,
  }) {
    return selectDateSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewMorePlanData data)? initial,
    TResult Function(ViewMorePlanData data)? selectDateSuccess,
    TResult Function(ViewMorePlanData data)? loading,
    TResult Function(ViewMorePlanData data)? getItemsSuccess,
    TResult Function(ViewMorePlanData data, String message)? getItemFailed,
    required TResult orElse(),
  }) {
    if (selectDateSuccess != null) {
      return selectDateSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectDateSuccess value) selectDateSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetItemSuccess value) getItemsSuccess,
    required TResult Function(_GetItemFailed value) getItemFailed,
  }) {
    return selectDateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetItemSuccess value)? getItemsSuccess,
    TResult? Function(_GetItemFailed value)? getItemFailed,
  }) {
    return selectDateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetItemSuccess value)? getItemsSuccess,
    TResult Function(_GetItemFailed value)? getItemFailed,
    required TResult orElse(),
  }) {
    if (selectDateSuccess != null) {
      return selectDateSuccess(this);
    }
    return orElse();
  }
}

abstract class _SelectDateSuccess extends ViewMorePlanState {
  const factory _SelectDateSuccess({required final ViewMorePlanData data}) =
      _$_SelectDateSuccess;
  const _SelectDateSuccess._() : super._();

  @override
  ViewMorePlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SelectDateSuccessCopyWith<_$_SelectDateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $ViewMorePlanStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewMorePlanData data});

  @override
  $ViewMorePlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ViewMorePlanStateCopyWithImpl<$Res, _$_Loading>
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
              as ViewMorePlanData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final ViewMorePlanData data;

  @override
  String toString() {
    return 'ViewMorePlanState.loading(data: $data)';
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
    required TResult Function(ViewMorePlanData data) initial,
    required TResult Function(ViewMorePlanData data) selectDateSuccess,
    required TResult Function(ViewMorePlanData data) loading,
    required TResult Function(ViewMorePlanData data) getItemsSuccess,
    required TResult Function(ViewMorePlanData data, String message)
        getItemFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewMorePlanData data)? initial,
    TResult? Function(ViewMorePlanData data)? selectDateSuccess,
    TResult? Function(ViewMorePlanData data)? loading,
    TResult? Function(ViewMorePlanData data)? getItemsSuccess,
    TResult? Function(ViewMorePlanData data, String message)? getItemFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewMorePlanData data)? initial,
    TResult Function(ViewMorePlanData data)? selectDateSuccess,
    TResult Function(ViewMorePlanData data)? loading,
    TResult Function(ViewMorePlanData data)? getItemsSuccess,
    TResult Function(ViewMorePlanData data, String message)? getItemFailed,
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
    required TResult Function(_SelectDateSuccess value) selectDateSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetItemSuccess value) getItemsSuccess,
    required TResult Function(_GetItemFailed value) getItemFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetItemSuccess value)? getItemsSuccess,
    TResult? Function(_GetItemFailed value)? getItemFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetItemSuccess value)? getItemsSuccess,
    TResult Function(_GetItemFailed value)? getItemFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ViewMorePlanState {
  const factory _Loading({required final ViewMorePlanData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  ViewMorePlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetItemSuccessCopyWith<$Res>
    implements $ViewMorePlanStateCopyWith<$Res> {
  factory _$$_GetItemSuccessCopyWith(
          _$_GetItemSuccess value, $Res Function(_$_GetItemSuccess) then) =
      __$$_GetItemSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewMorePlanData data});

  @override
  $ViewMorePlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetItemSuccessCopyWithImpl<$Res>
    extends _$ViewMorePlanStateCopyWithImpl<$Res, _$_GetItemSuccess>
    implements _$$_GetItemSuccessCopyWith<$Res> {
  __$$_GetItemSuccessCopyWithImpl(
      _$_GetItemSuccess _value, $Res Function(_$_GetItemSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetItemSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewMorePlanData,
    ));
  }
}

/// @nodoc

class _$_GetItemSuccess extends _GetItemSuccess {
  const _$_GetItemSuccess({required this.data}) : super._();

  @override
  final ViewMorePlanData data;

  @override
  String toString() {
    return 'ViewMorePlanState.getItemsSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetItemSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetItemSuccessCopyWith<_$_GetItemSuccess> get copyWith =>
      __$$_GetItemSuccessCopyWithImpl<_$_GetItemSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewMorePlanData data) initial,
    required TResult Function(ViewMorePlanData data) selectDateSuccess,
    required TResult Function(ViewMorePlanData data) loading,
    required TResult Function(ViewMorePlanData data) getItemsSuccess,
    required TResult Function(ViewMorePlanData data, String message)
        getItemFailed,
  }) {
    return getItemsSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewMorePlanData data)? initial,
    TResult? Function(ViewMorePlanData data)? selectDateSuccess,
    TResult? Function(ViewMorePlanData data)? loading,
    TResult? Function(ViewMorePlanData data)? getItemsSuccess,
    TResult? Function(ViewMorePlanData data, String message)? getItemFailed,
  }) {
    return getItemsSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewMorePlanData data)? initial,
    TResult Function(ViewMorePlanData data)? selectDateSuccess,
    TResult Function(ViewMorePlanData data)? loading,
    TResult Function(ViewMorePlanData data)? getItemsSuccess,
    TResult Function(ViewMorePlanData data, String message)? getItemFailed,
    required TResult orElse(),
  }) {
    if (getItemsSuccess != null) {
      return getItemsSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectDateSuccess value) selectDateSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetItemSuccess value) getItemsSuccess,
    required TResult Function(_GetItemFailed value) getItemFailed,
  }) {
    return getItemsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetItemSuccess value)? getItemsSuccess,
    TResult? Function(_GetItemFailed value)? getItemFailed,
  }) {
    return getItemsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetItemSuccess value)? getItemsSuccess,
    TResult Function(_GetItemFailed value)? getItemFailed,
    required TResult orElse(),
  }) {
    if (getItemsSuccess != null) {
      return getItemsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetItemSuccess extends ViewMorePlanState {
  const factory _GetItemSuccess({required final ViewMorePlanData data}) =
      _$_GetItemSuccess;
  const _GetItemSuccess._() : super._();

  @override
  ViewMorePlanData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetItemSuccessCopyWith<_$_GetItemSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetItemFailedCopyWith<$Res>
    implements $ViewMorePlanStateCopyWith<$Res> {
  factory _$$_GetItemFailedCopyWith(
          _$_GetItemFailed value, $Res Function(_$_GetItemFailed) then) =
      __$$_GetItemFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewMorePlanData data, String message});

  @override
  $ViewMorePlanDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetItemFailedCopyWithImpl<$Res>
    extends _$ViewMorePlanStateCopyWithImpl<$Res, _$_GetItemFailed>
    implements _$$_GetItemFailedCopyWith<$Res> {
  __$$_GetItemFailedCopyWithImpl(
      _$_GetItemFailed _value, $Res Function(_$_GetItemFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetItemFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewMorePlanData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetItemFailed extends _GetItemFailed {
  const _$_GetItemFailed({required this.data, required this.message})
      : super._();

  @override
  final ViewMorePlanData data;
  @override
  final String message;

  @override
  String toString() {
    return 'ViewMorePlanState.getItemFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetItemFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetItemFailedCopyWith<_$_GetItemFailed> get copyWith =>
      __$$_GetItemFailedCopyWithImpl<_$_GetItemFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewMorePlanData data) initial,
    required TResult Function(ViewMorePlanData data) selectDateSuccess,
    required TResult Function(ViewMorePlanData data) loading,
    required TResult Function(ViewMorePlanData data) getItemsSuccess,
    required TResult Function(ViewMorePlanData data, String message)
        getItemFailed,
  }) {
    return getItemFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewMorePlanData data)? initial,
    TResult? Function(ViewMorePlanData data)? selectDateSuccess,
    TResult? Function(ViewMorePlanData data)? loading,
    TResult? Function(ViewMorePlanData data)? getItemsSuccess,
    TResult? Function(ViewMorePlanData data, String message)? getItemFailed,
  }) {
    return getItemFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewMorePlanData data)? initial,
    TResult Function(ViewMorePlanData data)? selectDateSuccess,
    TResult Function(ViewMorePlanData data)? loading,
    TResult Function(ViewMorePlanData data)? getItemsSuccess,
    TResult Function(ViewMorePlanData data, String message)? getItemFailed,
    required TResult orElse(),
  }) {
    if (getItemFailed != null) {
      return getItemFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectDateSuccess value) selectDateSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetItemSuccess value) getItemsSuccess,
    required TResult Function(_GetItemFailed value) getItemFailed,
  }) {
    return getItemFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetItemSuccess value)? getItemsSuccess,
    TResult? Function(_GetItemFailed value)? getItemFailed,
  }) {
    return getItemFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectDateSuccess value)? selectDateSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetItemSuccess value)? getItemsSuccess,
    TResult Function(_GetItemFailed value)? getItemFailed,
    required TResult orElse(),
  }) {
    if (getItemFailed != null) {
      return getItemFailed(this);
    }
    return orElse();
  }
}

abstract class _GetItemFailed extends ViewMorePlanState {
  const factory _GetItemFailed(
      {required final ViewMorePlanData data,
      required final String message}) = _$_GetItemFailed;
  const _GetItemFailed._() : super._();

  @override
  ViewMorePlanData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetItemFailedCopyWith<_$_GetItemFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
