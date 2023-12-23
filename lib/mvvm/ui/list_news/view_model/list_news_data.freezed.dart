// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_news_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListNewsData {
  String? get searchContent => throw _privateConstructorUsedError;
  Pagination<NewsHealth> get newsHealth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListNewsDataCopyWith<ListNewsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListNewsDataCopyWith<$Res> {
  factory $ListNewsDataCopyWith(
          ListNewsData value, $Res Function(ListNewsData) then) =
      _$ListNewsDataCopyWithImpl<$Res, ListNewsData>;
  @useResult
  $Res call({String? searchContent, Pagination<NewsHealth> newsHealth});

  $PaginationCopyWith<NewsHealth, $Res> get newsHealth;
}

/// @nodoc
class _$ListNewsDataCopyWithImpl<$Res, $Val extends ListNewsData>
    implements $ListNewsDataCopyWith<$Res> {
  _$ListNewsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContent = freezed,
    Object? newsHealth = null,
  }) {
    return _then(_value.copyWith(
      searchContent: freezed == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String?,
      newsHealth: null == newsHealth
          ? _value.newsHealth
          : newsHealth // ignore: cast_nullable_to_non_nullable
              as Pagination<NewsHealth>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<NewsHealth, $Res> get newsHealth {
    return $PaginationCopyWith<NewsHealth, $Res>(_value.newsHealth, (value) {
      return _then(_value.copyWith(newsHealth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListNewsDataCopyWith<$Res>
    implements $ListNewsDataCopyWith<$Res> {
  factory _$$_ListNewsDataCopyWith(
          _$_ListNewsData value, $Res Function(_$_ListNewsData) then) =
      __$$_ListNewsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchContent, Pagination<NewsHealth> newsHealth});

  @override
  $PaginationCopyWith<NewsHealth, $Res> get newsHealth;
}

/// @nodoc
class __$$_ListNewsDataCopyWithImpl<$Res>
    extends _$ListNewsDataCopyWithImpl<$Res, _$_ListNewsData>
    implements _$$_ListNewsDataCopyWith<$Res> {
  __$$_ListNewsDataCopyWithImpl(
      _$_ListNewsData _value, $Res Function(_$_ListNewsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContent = freezed,
    Object? newsHealth = null,
  }) {
    return _then(_$_ListNewsData(
      searchContent: freezed == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String?,
      newsHealth: null == newsHealth
          ? _value.newsHealth
          : newsHealth // ignore: cast_nullable_to_non_nullable
              as Pagination<NewsHealth>,
    ));
  }
}

/// @nodoc

class _$_ListNewsData implements _ListNewsData {
  const _$_ListNewsData({this.searchContent, required this.newsHealth});

  @override
  final String? searchContent;
  @override
  final Pagination<NewsHealth> newsHealth;

  @override
  String toString() {
    return 'ListNewsData(searchContent: $searchContent, newsHealth: $newsHealth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListNewsData &&
            (identical(other.searchContent, searchContent) ||
                other.searchContent == searchContent) &&
            (identical(other.newsHealth, newsHealth) ||
                other.newsHealth == newsHealth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchContent, newsHealth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListNewsDataCopyWith<_$_ListNewsData> get copyWith =>
      __$$_ListNewsDataCopyWithImpl<_$_ListNewsData>(this, _$identity);
}

abstract class _ListNewsData implements ListNewsData {
  const factory _ListNewsData(
      {final String? searchContent,
      required final Pagination<NewsHealth> newsHealth}) = _$_ListNewsData;

  @override
  String? get searchContent;
  @override
  Pagination<NewsHealth> get newsHealth;
  @override
  @JsonKey(ignore: true)
  _$$_ListNewsDataCopyWith<_$_ListNewsData> get copyWith =>
      throw _privateConstructorUsedError;
}
