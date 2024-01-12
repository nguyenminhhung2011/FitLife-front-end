// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_health.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsHealth {
  int get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsHealthCopyWith<NewsHealth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHealthCopyWith<$Res> {
  factory $NewsHealthCopyWith(
          NewsHealth value, $Res Function(NewsHealth) then) =
      _$NewsHealthCopyWithImpl<$Res, NewsHealth>;
  @useResult
  $Res call(
      {int id,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String content,
      DateTime publishedAt});
}

/// @nodoc
class _$NewsHealthCopyWithImpl<$Res, $Val extends NewsHealth>
    implements $NewsHealthCopyWith<$Res> {
  _$NewsHealthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? urlToImage = null,
    Object? content = null,
    Object? publishedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsHealthCopyWith<$Res>
    implements $NewsHealthCopyWith<$Res> {
  factory _$$_NewsHealthCopyWith(
          _$_NewsHealth value, $Res Function(_$_NewsHealth) then) =
      __$$_NewsHealthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String content,
      DateTime publishedAt});
}

/// @nodoc
class __$$_NewsHealthCopyWithImpl<$Res>
    extends _$NewsHealthCopyWithImpl<$Res, _$_NewsHealth>
    implements _$$_NewsHealthCopyWith<$Res> {
  __$$_NewsHealthCopyWithImpl(
      _$_NewsHealth _value, $Res Function(_$_NewsHealth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? urlToImage = null,
    Object? content = null,
    Object? publishedAt = null,
  }) {
    return _then(_$_NewsHealth(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_NewsHealth implements _NewsHealth {
  const _$_NewsHealth(
      {required this.id,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.content,
      required this.publishedAt});

  @override
  final int id;
  @override
  final String author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String urlToImage;
  @override
  final String content;
  @override
  final DateTime publishedAt;

  @override
  String toString() {
    return 'NewsHealth(id: $id, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, content: $content, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsHealth &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, author, title, description,
      url, urlToImage, content, publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsHealthCopyWith<_$_NewsHealth> get copyWith =>
      __$$_NewsHealthCopyWithImpl<_$_NewsHealth>(this, _$identity);
}

abstract class _NewsHealth implements NewsHealth {
  const factory _NewsHealth(
      {required final int id,
      required final String author,
      required final String title,
      required final String description,
      required final String url,
      required final String urlToImage,
      required final String content,
      required final DateTime publishedAt}) = _$_NewsHealth;

  @override
  int get id;
  @override
  String get author;
  @override
  String get title;
  @override
  String get description;
  @override
  String get url;
  @override
  String get urlToImage;
  @override
  String get content;
  @override
  DateTime get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NewsHealthCopyWith<_$_NewsHealth> get copyWith =>
      throw _privateConstructorUsedError;
}
