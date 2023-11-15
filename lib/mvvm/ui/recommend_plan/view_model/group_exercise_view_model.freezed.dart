// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_exercise_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupExerciseState {
  GroupExerciseData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupExerciseData data) initial,
    required TResult Function(GroupExerciseData data) loading,
    required TResult Function(GroupExerciseData data)
        getExerciseCategoriesSuccess,
    required TResult Function(GroupExerciseData data, String message)
        getExerciseCategoriesFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupExerciseData data)? initial,
    TResult? Function(GroupExerciseData data)? loading,
    TResult? Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult? Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupExerciseData data)? initial,
    TResult Function(GroupExerciseData data)? loading,
    TResult Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseCategoriesSuccess value)
        getExerciseCategoriesSuccess,
    required TResult Function(_GetExerciseCategoriesFailed value)
        getExerciseCategoriesFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult? Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupExerciseStateCopyWith<GroupExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupExerciseStateCopyWith<$Res> {
  factory $GroupExerciseStateCopyWith(
          GroupExerciseState value, $Res Function(GroupExerciseState) then) =
      _$GroupExerciseStateCopyWithImpl<$Res, GroupExerciseState>;
  @useResult
  $Res call({GroupExerciseData data});

  $GroupExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GroupExerciseStateCopyWithImpl<$Res, $Val extends GroupExerciseState>
    implements $GroupExerciseStateCopyWith<$Res> {
  _$GroupExerciseStateCopyWithImpl(this._value, this._then);

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
              as GroupExerciseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupExerciseDataCopyWith<$Res> get data {
    return $GroupExerciseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $GroupExerciseStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupExerciseData data});

  @override
  $GroupExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GroupExerciseStateCopyWithImpl<$Res, _$_Initial>
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
              as GroupExerciseData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final GroupExerciseData data;

  @override
  String toString() {
    return 'GroupExerciseState.initial(data: $data)';
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
    required TResult Function(GroupExerciseData data) initial,
    required TResult Function(GroupExerciseData data) loading,
    required TResult Function(GroupExerciseData data)
        getExerciseCategoriesSuccess,
    required TResult Function(GroupExerciseData data, String message)
        getExerciseCategoriesFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupExerciseData data)? initial,
    TResult? Function(GroupExerciseData data)? loading,
    TResult? Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult? Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupExerciseData data)? initial,
    TResult Function(GroupExerciseData data)? loading,
    TResult Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
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
    required TResult Function(_GetExerciseCategoriesSuccess value)
        getExerciseCategoriesSuccess,
    required TResult Function(_GetExerciseCategoriesFailed value)
        getExerciseCategoriesFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult? Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends GroupExerciseState {
  const factory _Initial({required final GroupExerciseData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  GroupExerciseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $GroupExerciseStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupExerciseData data});

  @override
  $GroupExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$GroupExerciseStateCopyWithImpl<$Res, _$_Loading>
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
              as GroupExerciseData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final GroupExerciseData data;

  @override
  String toString() {
    return 'GroupExerciseState.loading(data: $data)';
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
    required TResult Function(GroupExerciseData data) initial,
    required TResult Function(GroupExerciseData data) loading,
    required TResult Function(GroupExerciseData data)
        getExerciseCategoriesSuccess,
    required TResult Function(GroupExerciseData data, String message)
        getExerciseCategoriesFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupExerciseData data)? initial,
    TResult? Function(GroupExerciseData data)? loading,
    TResult? Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult? Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupExerciseData data)? initial,
    TResult Function(GroupExerciseData data)? loading,
    TResult Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
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
    required TResult Function(_GetExerciseCategoriesSuccess value)
        getExerciseCategoriesSuccess,
    required TResult Function(_GetExerciseCategoriesFailed value)
        getExerciseCategoriesFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult? Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends GroupExerciseState {
  const factory _Loading({required final GroupExerciseData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  GroupExerciseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExerciseCategoriesSuccessCopyWith<$Res>
    implements $GroupExerciseStateCopyWith<$Res> {
  factory _$$_GetExerciseCategoriesSuccessCopyWith(
          _$_GetExerciseCategoriesSuccess value,
          $Res Function(_$_GetExerciseCategoriesSuccess) then) =
      __$$_GetExerciseCategoriesSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupExerciseData data});

  @override
  $GroupExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetExerciseCategoriesSuccessCopyWithImpl<$Res>
    extends _$GroupExerciseStateCopyWithImpl<$Res,
        _$_GetExerciseCategoriesSuccess>
    implements _$$_GetExerciseCategoriesSuccessCopyWith<$Res> {
  __$$_GetExerciseCategoriesSuccessCopyWithImpl(
      _$_GetExerciseCategoriesSuccess _value,
      $Res Function(_$_GetExerciseCategoriesSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetExerciseCategoriesSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GroupExerciseData,
    ));
  }
}

/// @nodoc

class _$_GetExerciseCategoriesSuccess extends _GetExerciseCategoriesSuccess {
  const _$_GetExerciseCategoriesSuccess({required this.data}) : super._();

  @override
  final GroupExerciseData data;

  @override
  String toString() {
    return 'GroupExerciseState.getExerciseCategoriesSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExerciseCategoriesSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExerciseCategoriesSuccessCopyWith<_$_GetExerciseCategoriesSuccess>
      get copyWith => __$$_GetExerciseCategoriesSuccessCopyWithImpl<
          _$_GetExerciseCategoriesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupExerciseData data) initial,
    required TResult Function(GroupExerciseData data) loading,
    required TResult Function(GroupExerciseData data)
        getExerciseCategoriesSuccess,
    required TResult Function(GroupExerciseData data, String message)
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupExerciseData data)? initial,
    TResult? Function(GroupExerciseData data)? loading,
    TResult? Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult? Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupExerciseData data)? initial,
    TResult Function(GroupExerciseData data)? loading,
    TResult Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) {
    if (getExerciseCategoriesSuccess != null) {
      return getExerciseCategoriesSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseCategoriesSuccess value)
        getExerciseCategoriesSuccess,
    required TResult Function(_GetExerciseCategoriesFailed value)
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult? Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) {
    if (getExerciseCategoriesSuccess != null) {
      return getExerciseCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetExerciseCategoriesSuccess extends GroupExerciseState {
  const factory _GetExerciseCategoriesSuccess(
          {required final GroupExerciseData data}) =
      _$_GetExerciseCategoriesSuccess;
  const _GetExerciseCategoriesSuccess._() : super._();

  @override
  GroupExerciseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetExerciseCategoriesSuccessCopyWith<_$_GetExerciseCategoriesSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetExerciseCategoriesFailedCopyWith<$Res>
    implements $GroupExerciseStateCopyWith<$Res> {
  factory _$$_GetExerciseCategoriesFailedCopyWith(
          _$_GetExerciseCategoriesFailed value,
          $Res Function(_$_GetExerciseCategoriesFailed) then) =
      __$$_GetExerciseCategoriesFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GroupExerciseData data, String message});

  @override
  $GroupExerciseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetExerciseCategoriesFailedCopyWithImpl<$Res>
    extends _$GroupExerciseStateCopyWithImpl<$Res,
        _$_GetExerciseCategoriesFailed>
    implements _$$_GetExerciseCategoriesFailedCopyWith<$Res> {
  __$$_GetExerciseCategoriesFailedCopyWithImpl(
      _$_GetExerciseCategoriesFailed _value,
      $Res Function(_$_GetExerciseCategoriesFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetExerciseCategoriesFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GroupExerciseData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetExerciseCategoriesFailed extends _GetExerciseCategoriesFailed {
  const _$_GetExerciseCategoriesFailed(
      {required this.data, required this.message})
      : super._();

  @override
  final GroupExerciseData data;
  @override
  final String message;

  @override
  String toString() {
    return 'GroupExerciseState.getExerciseCategoriesFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetExerciseCategoriesFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetExerciseCategoriesFailedCopyWith<_$_GetExerciseCategoriesFailed>
      get copyWith => __$$_GetExerciseCategoriesFailedCopyWithImpl<
          _$_GetExerciseCategoriesFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GroupExerciseData data) initial,
    required TResult Function(GroupExerciseData data) loading,
    required TResult Function(GroupExerciseData data)
        getExerciseCategoriesSuccess,
    required TResult Function(GroupExerciseData data, String message)
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GroupExerciseData data)? initial,
    TResult? Function(GroupExerciseData data)? loading,
    TResult? Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult? Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GroupExerciseData data)? initial,
    TResult Function(GroupExerciseData data)? loading,
    TResult Function(GroupExerciseData data)? getExerciseCategoriesSuccess,
    TResult Function(GroupExerciseData data, String message)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) {
    if (getExerciseCategoriesFailed != null) {
      return getExerciseCategoriesFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetExerciseCategoriesSuccess value)
        getExerciseCategoriesSuccess,
    required TResult Function(_GetExerciseCategoriesFailed value)
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult? Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
  }) {
    return getExerciseCategoriesFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetExerciseCategoriesSuccess value)?
        getExerciseCategoriesSuccess,
    TResult Function(_GetExerciseCategoriesFailed value)?
        getExerciseCategoriesFailed,
    required TResult orElse(),
  }) {
    if (getExerciseCategoriesFailed != null) {
      return getExerciseCategoriesFailed(this);
    }
    return orElse();
  }
}

abstract class _GetExerciseCategoriesFailed extends GroupExerciseState {
  const factory _GetExerciseCategoriesFailed(
      {required final GroupExerciseData data,
      required final String message}) = _$_GetExerciseCategoriesFailed;
  const _GetExerciseCategoriesFailed._() : super._();

  @override
  GroupExerciseData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetExerciseCategoriesFailedCopyWith<_$_GetExerciseCategoriesFailed>
      get copyWith => throw _privateConstructorUsedError;
}
