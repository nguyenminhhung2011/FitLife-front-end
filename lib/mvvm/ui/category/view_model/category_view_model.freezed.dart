// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  CategoryData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryData data) initial,
    required TResult Function(CategoryData data) loading,
    required TResult Function(CategoryData data) getCategorySuccess,
    required TResult Function(CategoryData data, String message)
        getCategoryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryData data)? initial,
    TResult? Function(CategoryData data)? loading,
    TResult? Function(CategoryData data)? getCategorySuccess,
    TResult? Function(CategoryData data, String message)? getCategoryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryData data)? initial,
    TResult Function(CategoryData data)? loading,
    TResult Function(CategoryData data)? getCategorySuccess,
    TResult Function(CategoryData data, String message)? getCategoryFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCategorySuccess value) getCategorySuccess,
    required TResult Function(_GetCategoryFailed value) getCategoryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult? Function(_GetCategoryFailed value)? getCategoryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult Function(_GetCategoryFailed value)? getCategoryFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call({CategoryData data});

  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
              as CategoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDataCopyWith<$Res> get data {
    return $CategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_Initial>
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
              as CategoryData,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.data}) : super._();

  @override
  final CategoryData data;

  @override
  String toString() {
    return 'CategoryState.initial(data: $data)';
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
    required TResult Function(CategoryData data) initial,
    required TResult Function(CategoryData data) loading,
    required TResult Function(CategoryData data) getCategorySuccess,
    required TResult Function(CategoryData data, String message)
        getCategoryFailed,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryData data)? initial,
    TResult? Function(CategoryData data)? loading,
    TResult? Function(CategoryData data)? getCategorySuccess,
    TResult? Function(CategoryData data, String message)? getCategoryFailed,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryData data)? initial,
    TResult Function(CategoryData data)? loading,
    TResult Function(CategoryData data)? getCategorySuccess,
    TResult Function(CategoryData data, String message)? getCategoryFailed,
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
    required TResult Function(_GetCategorySuccess value) getCategorySuccess,
    required TResult Function(_GetCategoryFailed value) getCategoryFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult? Function(_GetCategoryFailed value)? getCategoryFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult Function(_GetCategoryFailed value)? getCategoryFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CategoryState {
  const factory _Initial({required final CategoryData data}) = _$_Initial;
  const _Initial._() : super._();

  @override
  CategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_Loading>
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
              as CategoryData,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.data}) : super._();

  @override
  final CategoryData data;

  @override
  String toString() {
    return 'CategoryState.loading(data: $data)';
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
    required TResult Function(CategoryData data) initial,
    required TResult Function(CategoryData data) loading,
    required TResult Function(CategoryData data) getCategorySuccess,
    required TResult Function(CategoryData data, String message)
        getCategoryFailed,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryData data)? initial,
    TResult? Function(CategoryData data)? loading,
    TResult? Function(CategoryData data)? getCategorySuccess,
    TResult? Function(CategoryData data, String message)? getCategoryFailed,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryData data)? initial,
    TResult Function(CategoryData data)? loading,
    TResult Function(CategoryData data)? getCategorySuccess,
    TResult Function(CategoryData data, String message)? getCategoryFailed,
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
    required TResult Function(_GetCategorySuccess value) getCategorySuccess,
    required TResult Function(_GetCategoryFailed value) getCategoryFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult? Function(_GetCategoryFailed value)? getCategoryFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult Function(_GetCategoryFailed value)? getCategoryFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CategoryState {
  const factory _Loading({required final CategoryData data}) = _$_Loading;
  const _Loading._() : super._();

  @override
  CategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCategorySuccessCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_GetCategorySuccessCopyWith(_$_GetCategorySuccess value,
          $Res Function(_$_GetCategorySuccess) then) =
      __$$_GetCategorySuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCategorySuccessCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_GetCategorySuccess>
    implements _$$_GetCategorySuccessCopyWith<$Res> {
  __$$_GetCategorySuccessCopyWithImpl(
      _$_GetCategorySuccess _value, $Res Function(_$_GetCategorySuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_GetCategorySuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryData,
    ));
  }
}

/// @nodoc

class _$_GetCategorySuccess extends _GetCategorySuccess {
  const _$_GetCategorySuccess({required this.data}) : super._();

  @override
  final CategoryData data;

  @override
  String toString() {
    return 'CategoryState.getCategorySuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategorySuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategorySuccessCopyWith<_$_GetCategorySuccess> get copyWith =>
      __$$_GetCategorySuccessCopyWithImpl<_$_GetCategorySuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryData data) initial,
    required TResult Function(CategoryData data) loading,
    required TResult Function(CategoryData data) getCategorySuccess,
    required TResult Function(CategoryData data, String message)
        getCategoryFailed,
  }) {
    return getCategorySuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryData data)? initial,
    TResult? Function(CategoryData data)? loading,
    TResult? Function(CategoryData data)? getCategorySuccess,
    TResult? Function(CategoryData data, String message)? getCategoryFailed,
  }) {
    return getCategorySuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryData data)? initial,
    TResult Function(CategoryData data)? loading,
    TResult Function(CategoryData data)? getCategorySuccess,
    TResult Function(CategoryData data, String message)? getCategoryFailed,
    required TResult orElse(),
  }) {
    if (getCategorySuccess != null) {
      return getCategorySuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCategorySuccess value) getCategorySuccess,
    required TResult Function(_GetCategoryFailed value) getCategoryFailed,
  }) {
    return getCategorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult? Function(_GetCategoryFailed value)? getCategoryFailed,
  }) {
    return getCategorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult Function(_GetCategoryFailed value)? getCategoryFailed,
    required TResult orElse(),
  }) {
    if (getCategorySuccess != null) {
      return getCategorySuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCategorySuccess extends CategoryState {
  const factory _GetCategorySuccess({required final CategoryData data}) =
      _$_GetCategorySuccess;
  const _GetCategorySuccess._() : super._();

  @override
  CategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategorySuccessCopyWith<_$_GetCategorySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCategoryFailedCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_GetCategoryFailedCopyWith(_$_GetCategoryFailed value,
          $Res Function(_$_GetCategoryFailed) then) =
      __$$_GetCategoryFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryData data, String message});

  @override
  $CategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GetCategoryFailedCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_GetCategoryFailed>
    implements _$$_GetCategoryFailedCopyWith<$Res> {
  __$$_GetCategoryFailedCopyWithImpl(
      _$_GetCategoryFailed _value, $Res Function(_$_GetCategoryFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_GetCategoryFailed(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCategoryFailed extends _GetCategoryFailed {
  const _$_GetCategoryFailed({required this.data, required this.message})
      : super._();

  @override
  final CategoryData data;
  @override
  final String message;

  @override
  String toString() {
    return 'CategoryState.getCategoryFailed(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCategoryFailed &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCategoryFailedCopyWith<_$_GetCategoryFailed> get copyWith =>
      __$$_GetCategoryFailedCopyWithImpl<_$_GetCategoryFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryData data) initial,
    required TResult Function(CategoryData data) loading,
    required TResult Function(CategoryData data) getCategorySuccess,
    required TResult Function(CategoryData data, String message)
        getCategoryFailed,
  }) {
    return getCategoryFailed(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryData data)? initial,
    TResult? Function(CategoryData data)? loading,
    TResult? Function(CategoryData data)? getCategorySuccess,
    TResult? Function(CategoryData data, String message)? getCategoryFailed,
  }) {
    return getCategoryFailed?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryData data)? initial,
    TResult Function(CategoryData data)? loading,
    TResult Function(CategoryData data)? getCategorySuccess,
    TResult Function(CategoryData data, String message)? getCategoryFailed,
    required TResult orElse(),
  }) {
    if (getCategoryFailed != null) {
      return getCategoryFailed(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetCategorySuccess value) getCategorySuccess,
    required TResult Function(_GetCategoryFailed value) getCategoryFailed,
  }) {
    return getCategoryFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult? Function(_GetCategoryFailed value)? getCategoryFailed,
  }) {
    return getCategoryFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetCategorySuccess value)? getCategorySuccess,
    TResult Function(_GetCategoryFailed value)? getCategoryFailed,
    required TResult orElse(),
  }) {
    if (getCategoryFailed != null) {
      return getCategoryFailed(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryFailed extends CategoryState {
  const factory _GetCategoryFailed(
      {required final CategoryData data,
      required final String message}) = _$_GetCategoryFailed;
  const _GetCategoryFailed._() : super._();

  @override
  CategoryData get data;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_GetCategoryFailedCopyWith<_$_GetCategoryFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
