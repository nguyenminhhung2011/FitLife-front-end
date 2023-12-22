// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsDetailData {
  NewsHealth? get detail => throw _privateConstructorUsedError;
  List<NewsHealth>? get news => throw _privateConstructorUsedError;
  bool get isLoadingTopNews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsDetailDataCopyWith<NewsDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDetailDataCopyWith<$Res> {
  factory $NewsDetailDataCopyWith(
          NewsDetailData value, $Res Function(NewsDetailData) then) =
      _$NewsDetailDataCopyWithImpl<$Res, NewsDetailData>;
  @useResult
  $Res call(
      {NewsHealth? detail, List<NewsHealth>? news, bool isLoadingTopNews});

  $NewsHealthCopyWith<$Res>? get detail;
}

/// @nodoc
class _$NewsDetailDataCopyWithImpl<$Res, $Val extends NewsDetailData>
    implements $NewsDetailDataCopyWith<$Res> {
  _$NewsDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
    Object? news = freezed,
    Object? isLoadingTopNews = null,
  }) {
    return _then(_value.copyWith(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as NewsHealth?,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsHealth>?,
      isLoadingTopNews: null == isLoadingTopNews
          ? _value.isLoadingTopNews
          : isLoadingTopNews // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsHealthCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $NewsHealthCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsDetailDataCopyWith<$Res>
    implements $NewsDetailDataCopyWith<$Res> {
  factory _$$_NewsDetailDataCopyWith(
          _$_NewsDetailData value, $Res Function(_$_NewsDetailData) then) =
      __$$_NewsDetailDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewsHealth? detail, List<NewsHealth>? news, bool isLoadingTopNews});

  @override
  $NewsHealthCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$_NewsDetailDataCopyWithImpl<$Res>
    extends _$NewsDetailDataCopyWithImpl<$Res, _$_NewsDetailData>
    implements _$$_NewsDetailDataCopyWith<$Res> {
  __$$_NewsDetailDataCopyWithImpl(
      _$_NewsDetailData _value, $Res Function(_$_NewsDetailData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
    Object? news = freezed,
    Object? isLoadingTopNews = null,
  }) {
    return _then(_$_NewsDetailData(
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as NewsHealth?,
      news: freezed == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsHealth>?,
      isLoadingTopNews: null == isLoadingTopNews
          ? _value.isLoadingTopNews
          : isLoadingTopNews // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewsDetailData implements _NewsDetailData {
  const _$_NewsDetailData(
      {this.detail,
      final List<NewsHealth>? news,
      this.isLoadingTopNews = false})
      : _news = news;

  @override
  final NewsHealth? detail;
  final List<NewsHealth>? _news;
  @override
  List<NewsHealth>? get news {
    final value = _news;
    if (value == null) return null;
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoadingTopNews;

  @override
  String toString() {
    return 'NewsDetailData(detail: $detail, news: $news, isLoadingTopNews: $isLoadingTopNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDetailData &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.isLoadingTopNews, isLoadingTopNews) ||
                other.isLoadingTopNews == isLoadingTopNews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail,
      const DeepCollectionEquality().hash(_news), isLoadingTopNews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDetailDataCopyWith<_$_NewsDetailData> get copyWith =>
      __$$_NewsDetailDataCopyWithImpl<_$_NewsDetailData>(this, _$identity);
}

abstract class _NewsDetailData implements NewsDetailData {
  const factory _NewsDetailData(
      {final NewsHealth? detail,
      final List<NewsHealth>? news,
      final bool isLoadingTopNews}) = _$_NewsDetailData;

  @override
  NewsHealth? get detail;
  @override
  List<NewsHealth>? get news;
  @override
  bool get isLoadingTopNews;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDetailDataCopyWith<_$_NewsDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}
