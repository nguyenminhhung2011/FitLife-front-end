// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bot_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateBotData {
  BothImageData? get botImage => throw _privateConstructorUsedError;
  File? get sourceFile => throw _privateConstructorUsedError;
  int get behaviorTab => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateBotDataCopyWith<CreateBotData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBotDataCopyWith<$Res> {
  factory $CreateBotDataCopyWith(
          CreateBotData value, $Res Function(CreateBotData) then) =
      _$CreateBotDataCopyWithImpl<$Res, CreateBotData>;
  @useResult
  $Res call(
      {BothImageData? botImage,
      File? sourceFile,
      int behaviorTab,
      String model});
}

/// @nodoc
class _$CreateBotDataCopyWithImpl<$Res, $Val extends CreateBotData>
    implements $CreateBotDataCopyWith<$Res> {
  _$CreateBotDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botImage = freezed,
    Object? sourceFile = freezed,
    Object? behaviorTab = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      botImage: freezed == botImage
          ? _value.botImage
          : botImage // ignore: cast_nullable_to_non_nullable
              as BothImageData?,
      sourceFile: freezed == sourceFile
          ? _value.sourceFile
          : sourceFile // ignore: cast_nullable_to_non_nullable
              as File?,
      behaviorTab: null == behaviorTab
          ? _value.behaviorTab
          : behaviorTab // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateBotDataCopyWith<$Res>
    implements $CreateBotDataCopyWith<$Res> {
  factory _$$_CreateBotDataCopyWith(
          _$_CreateBotData value, $Res Function(_$_CreateBotData) then) =
      __$$_CreateBotDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BothImageData? botImage,
      File? sourceFile,
      int behaviorTab,
      String model});
}

/// @nodoc
class __$$_CreateBotDataCopyWithImpl<$Res>
    extends _$CreateBotDataCopyWithImpl<$Res, _$_CreateBotData>
    implements _$$_CreateBotDataCopyWith<$Res> {
  __$$_CreateBotDataCopyWithImpl(
      _$_CreateBotData _value, $Res Function(_$_CreateBotData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botImage = freezed,
    Object? sourceFile = freezed,
    Object? behaviorTab = null,
    Object? model = null,
  }) {
    return _then(_$_CreateBotData(
      botImage: freezed == botImage
          ? _value.botImage
          : botImage // ignore: cast_nullable_to_non_nullable
              as BothImageData?,
      sourceFile: freezed == sourceFile
          ? _value.sourceFile
          : sourceFile // ignore: cast_nullable_to_non_nullable
              as File?,
      behaviorTab: null == behaviorTab
          ? _value.behaviorTab
          : behaviorTab // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateBotData implements _CreateBotData {
  const _$_CreateBotData(
      {this.botImage,
      this.sourceFile,
      this.behaviorTab = 0,
      required this.model});

  @override
  final BothImageData? botImage;
  @override
  final File? sourceFile;
  @override
  @JsonKey()
  final int behaviorTab;
  @override
  final String model;

  @override
  String toString() {
    return 'CreateBotData(botImage: $botImage, sourceFile: $sourceFile, behaviorTab: $behaviorTab, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateBotData &&
            (identical(other.botImage, botImage) ||
                other.botImage == botImage) &&
            (identical(other.sourceFile, sourceFile) ||
                other.sourceFile == sourceFile) &&
            (identical(other.behaviorTab, behaviorTab) ||
                other.behaviorTab == behaviorTab) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, botImage, sourceFile, behaviorTab, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateBotDataCopyWith<_$_CreateBotData> get copyWith =>
      __$$_CreateBotDataCopyWithImpl<_$_CreateBotData>(this, _$identity);
}

abstract class _CreateBotData implements CreateBotData {
  const factory _CreateBotData(
      {final BothImageData? botImage,
      final File? sourceFile,
      final int behaviorTab,
      required final String model}) = _$_CreateBotData;

  @override
  BothImageData? get botImage;
  @override
  File? get sourceFile;
  @override
  int get behaviorTab;
  @override
  String get model;
  @override
  @JsonKey(ignore: true)
  _$$_CreateBotDataCopyWith<_$_CreateBotData> get copyWith =>
      throw _privateConstructorUsedError;
}
