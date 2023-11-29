// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthOverviewData {
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;
  int get targetWeight => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthOverviewDataCopyWith<HealthOverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthOverviewDataCopyWith<$Res> {
  factory $HealthOverviewDataCopyWith(
          HealthOverviewData value, $Res Function(HealthOverviewData) then) =
      _$HealthOverviewDataCopyWithImpl<$Res, HealthOverviewData>;
  @useResult
  $Res call(
      {int weight, int height, bool isMale, int targetWeight, int duration});
}

/// @nodoc
class _$HealthOverviewDataCopyWithImpl<$Res, $Val extends HealthOverviewData>
    implements $HealthOverviewDataCopyWith<$Res> {
  _$HealthOverviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? height = null,
    Object? isMale = null,
    Object? targetWeight = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      targetWeight: null == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HealthOverviewDataCopyWith<$Res>
    implements $HealthOverviewDataCopyWith<$Res> {
  factory _$$_HealthOverviewDataCopyWith(_$_HealthOverviewData value,
          $Res Function(_$_HealthOverviewData) then) =
      __$$_HealthOverviewDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int weight, int height, bool isMale, int targetWeight, int duration});
}

/// @nodoc
class __$$_HealthOverviewDataCopyWithImpl<$Res>
    extends _$HealthOverviewDataCopyWithImpl<$Res, _$_HealthOverviewData>
    implements _$$_HealthOverviewDataCopyWith<$Res> {
  __$$_HealthOverviewDataCopyWithImpl(
      _$_HealthOverviewData _value, $Res Function(_$_HealthOverviewData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? height = null,
    Object? isMale = null,
    Object? targetWeight = null,
    Object? duration = null,
  }) {
    return _then(_$_HealthOverviewData(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      targetWeight: null == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HealthOverviewData implements _HealthOverviewData {
  const _$_HealthOverviewData(
      {this.weight = 50,
      this.height = 50,
      this.isMale = true,
      this.targetWeight = 50,
      this.duration = 1});

  @override
  @JsonKey()
  final int weight;
  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final bool isMale;
  @override
  @JsonKey()
  final int targetWeight;
  @override
  @JsonKey()
  final int duration;

  @override
  String toString() {
    return 'HealthOverviewData(weight: $weight, height: $height, isMale: $isMale, targetWeight: $targetWeight, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HealthOverviewData &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.isMale, isMale) || other.isMale == isMale) &&
            (identical(other.targetWeight, targetWeight) ||
                other.targetWeight == targetWeight) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weight, height, isMale, targetWeight, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HealthOverviewDataCopyWith<_$_HealthOverviewData> get copyWith =>
      __$$_HealthOverviewDataCopyWithImpl<_$_HealthOverviewData>(
          this, _$identity);
}

abstract class _HealthOverviewData implements HealthOverviewData {
  const factory _HealthOverviewData(
      {final int weight,
      final int height,
      final bool isMale,
      final int targetWeight,
      final int duration}) = _$_HealthOverviewData;

  @override
  int get weight;
  @override
  int get height;
  @override
  bool get isMale;
  @override
  int get targetWeight;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_HealthOverviewDataCopyWith<_$_HealthOverviewData> get copyWith =>
      throw _privateConstructorUsedError;
}
