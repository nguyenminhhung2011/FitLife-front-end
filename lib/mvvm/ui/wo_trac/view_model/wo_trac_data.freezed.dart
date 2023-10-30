// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_trac_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WooTrackData {
  int get currentExIndex => throw _privateConstructorUsedError;
  bool get isPlayed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WooTrackDataCopyWith<WooTrackData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WooTrackDataCopyWith<$Res> {
  factory $WooTrackDataCopyWith(
          WooTrackData value, $Res Function(WooTrackData) then) =
      _$WooTrackDataCopyWithImpl<$Res, WooTrackData>;
  @useResult
  $Res call({int currentExIndex, bool isPlayed});
}

/// @nodoc
class _$WooTrackDataCopyWithImpl<$Res, $Val extends WooTrackData>
    implements $WooTrackDataCopyWith<$Res> {
  _$WooTrackDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentExIndex = null,
    Object? isPlayed = null,
  }) {
    return _then(_value.copyWith(
      currentExIndex: null == currentExIndex
          ? _value.currentExIndex
          : currentExIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlayed: null == isPlayed
          ? _value.isPlayed
          : isPlayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WooTrackDataCopyWith<$Res>
    implements $WooTrackDataCopyWith<$Res> {
  factory _$$_WooTrackDataCopyWith(
          _$_WooTrackData value, $Res Function(_$_WooTrackData) then) =
      __$$_WooTrackDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentExIndex, bool isPlayed});
}

/// @nodoc
class __$$_WooTrackDataCopyWithImpl<$Res>
    extends _$WooTrackDataCopyWithImpl<$Res, _$_WooTrackData>
    implements _$$_WooTrackDataCopyWith<$Res> {
  __$$_WooTrackDataCopyWithImpl(
      _$_WooTrackData _value, $Res Function(_$_WooTrackData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentExIndex = null,
    Object? isPlayed = null,
  }) {
    return _then(_$_WooTrackData(
      currentExIndex: null == currentExIndex
          ? _value.currentExIndex
          : currentExIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlayed: null == isPlayed
          ? _value.isPlayed
          : isPlayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WooTrackData implements _WooTrackData {
  const _$_WooTrackData({required this.currentExIndex, required this.isPlayed});

  @override
  final int currentExIndex;
  @override
  final bool isPlayed;

  @override
  String toString() {
    return 'WooTrackData(currentExIndex: $currentExIndex, isPlayed: $isPlayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WooTrackData &&
            (identical(other.currentExIndex, currentExIndex) ||
                other.currentExIndex == currentExIndex) &&
            (identical(other.isPlayed, isPlayed) ||
                other.isPlayed == isPlayed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentExIndex, isPlayed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WooTrackDataCopyWith<_$_WooTrackData> get copyWith =>
      __$$_WooTrackDataCopyWithImpl<_$_WooTrackData>(this, _$identity);
}

abstract class _WooTrackData implements WooTrackData {
  const factory _WooTrackData(
      {required final int currentExIndex,
      required final bool isPlayed}) = _$_WooTrackData;

  @override
  int get currentExIndex;
  @override
  bool get isPlayed;
  @override
  @JsonKey(ignore: true)
  _$$_WooTrackDataCopyWith<_$_WooTrackData> get copyWith =>
      throw _privateConstructorUsedError;
}
