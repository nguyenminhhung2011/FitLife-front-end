// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthOverview {
  int? get weight => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  bool? get isMale => throw _privateConstructorUsedError;
  int? get targetWeight => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthOverviewCopyWith<HealthOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthOverviewCopyWith<$Res> {
  factory $HealthOverviewCopyWith(
          HealthOverview value, $Res Function(HealthOverview) then) =
      _$HealthOverviewCopyWithImpl<$Res, HealthOverview>;
  @useResult
  $Res call(
      {int? weight,
      int? height,
      bool? isMale,
      int? targetWeight,
      int? duration});
}

/// @nodoc
class _$HealthOverviewCopyWithImpl<$Res, $Val extends HealthOverview>
    implements $HealthOverviewCopyWith<$Res> {
  _$HealthOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = freezed,
    Object? height = freezed,
    Object? isMale = freezed,
    Object? targetWeight = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isMale: freezed == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool?,
      targetWeight: freezed == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HealthOverviewCopyWith<$Res>
    implements $HealthOverviewCopyWith<$Res> {
  factory _$$_HealthOverviewCopyWith(
          _$_HealthOverview value, $Res Function(_$_HealthOverview) then) =
      __$$_HealthOverviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? weight,
      int? height,
      bool? isMale,
      int? targetWeight,
      int? duration});
}

/// @nodoc
class __$$_HealthOverviewCopyWithImpl<$Res>
    extends _$HealthOverviewCopyWithImpl<$Res, _$_HealthOverview>
    implements _$$_HealthOverviewCopyWith<$Res> {
  __$$_HealthOverviewCopyWithImpl(
      _$_HealthOverview _value, $Res Function(_$_HealthOverview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = freezed,
    Object? height = freezed,
    Object? isMale = freezed,
    Object? targetWeight = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_HealthOverview(
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isMale: freezed == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool?,
      targetWeight: freezed == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_HealthOverview implements _HealthOverview {
  const _$_HealthOverview(
      {this.weight,
      this.height,
      this.isMale,
      this.targetWeight,
      this.duration});

  @override
  final int? weight;
  @override
  final int? height;
  @override
  final bool? isMale;
  @override
  final int? targetWeight;
  @override
  final int? duration;

  @override
  String toString() {
    return 'HealthOverview(weight: $weight, height: $height, isMale: $isMale, targetWeight: $targetWeight, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HealthOverview &&
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
  _$$_HealthOverviewCopyWith<_$_HealthOverview> get copyWith =>
      __$$_HealthOverviewCopyWithImpl<_$_HealthOverview>(this, _$identity);
}

abstract class _HealthOverview implements HealthOverview {
  const factory _HealthOverview(
      {final int? weight,
      final int? height,
      final bool? isMale,
      final int? targetWeight,
      final int? duration}) = _$_HealthOverview;

  @override
  int? get weight;
  @override
  int? get height;
  @override
  bool? get isMale;
  @override
  int? get targetWeight;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_HealthOverviewCopyWith<_$_HealthOverview> get copyWith =>
      throw _privateConstructorUsedError;
}
