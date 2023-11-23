// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanDetailData {
  PlanDetail get planDetail => throw _privateConstructorUsedError;
  bool get isLoadingSchedule => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanDetailDataCopyWith<PlanDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDetailDataCopyWith<$Res> {
  factory $PlanDetailDataCopyWith(
          PlanDetailData value, $Res Function(PlanDetailData) then) =
      _$PlanDetailDataCopyWithImpl<$Res, PlanDetailData>;
  @useResult
  $Res call({PlanDetail planDetail, bool isLoadingSchedule});

  $PlanDetailCopyWith<$Res> get planDetail;
}

/// @nodoc
class _$PlanDetailDataCopyWithImpl<$Res, $Val extends PlanDetailData>
    implements $PlanDetailDataCopyWith<$Res> {
  _$PlanDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDetail = null,
    Object? isLoadingSchedule = null,
  }) {
    return _then(_value.copyWith(
      planDetail: null == planDetail
          ? _value.planDetail
          : planDetail // ignore: cast_nullable_to_non_nullable
              as PlanDetail,
      isLoadingSchedule: null == isLoadingSchedule
          ? _value.isLoadingSchedule
          : isLoadingSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanDetailCopyWith<$Res> get planDetail {
    return $PlanDetailCopyWith<$Res>(_value.planDetail, (value) {
      return _then(_value.copyWith(planDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlanDetailDataCopyWith<$Res>
    implements $PlanDetailDataCopyWith<$Res> {
  factory _$$_PlanDetailDataCopyWith(
          _$_PlanDetailData value, $Res Function(_$_PlanDetailData) then) =
      __$$_PlanDetailDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlanDetail planDetail, bool isLoadingSchedule});

  @override
  $PlanDetailCopyWith<$Res> get planDetail;
}

/// @nodoc
class __$$_PlanDetailDataCopyWithImpl<$Res>
    extends _$PlanDetailDataCopyWithImpl<$Res, _$_PlanDetailData>
    implements _$$_PlanDetailDataCopyWith<$Res> {
  __$$_PlanDetailDataCopyWithImpl(
      _$_PlanDetailData _value, $Res Function(_$_PlanDetailData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDetail = null,
    Object? isLoadingSchedule = null,
  }) {
    return _then(_$_PlanDetailData(
      planDetail: null == planDetail
          ? _value.planDetail
          : planDetail // ignore: cast_nullable_to_non_nullable
              as PlanDetail,
      isLoadingSchedule: null == isLoadingSchedule
          ? _value.isLoadingSchedule
          : isLoadingSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlanDetailData implements _PlanDetailData {
  const _$_PlanDetailData(
      {this.planDetail = const PlanDetail(), this.isLoadingSchedule = false});

  @override
  @JsonKey()
  final PlanDetail planDetail;
  @override
  @JsonKey()
  final bool isLoadingSchedule;

  @override
  String toString() {
    return 'PlanDetailData(planDetail: $planDetail, isLoadingSchedule: $isLoadingSchedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanDetailData &&
            (identical(other.planDetail, planDetail) ||
                other.planDetail == planDetail) &&
            (identical(other.isLoadingSchedule, isLoadingSchedule) ||
                other.isLoadingSchedule == isLoadingSchedule));
  }

  @override
  int get hashCode => Object.hash(runtimeType, planDetail, isLoadingSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanDetailDataCopyWith<_$_PlanDetailData> get copyWith =>
      __$$_PlanDetailDataCopyWithImpl<_$_PlanDetailData>(this, _$identity);
}

abstract class _PlanDetailData implements PlanDetailData {
  const factory _PlanDetailData(
      {final PlanDetail planDetail,
      final bool isLoadingSchedule}) = _$_PlanDetailData;

  @override
  PlanDetail get planDetail;
  @override
  bool get isLoadingSchedule;
  @override
  @JsonKey(ignore: true)
  _$$_PlanDetailDataCopyWith<_$_PlanDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}
