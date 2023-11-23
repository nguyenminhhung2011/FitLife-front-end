// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanDetail _$PlanDetailFromJson(Map<String, dynamic> json) {
  return _PlanDetail.fromJson(json);
}

/// @nodoc
mixin _$PlanDetail {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get progress => throw _privateConstructorUsedError;
  List<DailyWorkout>? get dailyWorkouts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanDetailCopyWith<PlanDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDetailCopyWith<$Res> {
  factory $PlanDetailCopyWith(
          PlanDetail value, $Res Function(PlanDetail) then) =
      _$PlanDetailCopyWithImpl<$Res, PlanDetail>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      double? progress,
      List<DailyWorkout>? dailyWorkouts});
}

/// @nodoc
class _$PlanDetailCopyWithImpl<$Res, $Val extends PlanDetail>
    implements $PlanDetailCopyWith<$Res> {
  _$PlanDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? progress = freezed,
    Object? dailyWorkouts = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWorkouts: freezed == dailyWorkouts
          ? _value.dailyWorkouts
          : dailyWorkouts // ignore: cast_nullable_to_non_nullable
              as List<DailyWorkout>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanDetailCopyWith<$Res>
    implements $PlanDetailCopyWith<$Res> {
  factory _$$_PlanDetailCopyWith(
          _$_PlanDetail value, $Res Function(_$_PlanDetail) then) =
      __$$_PlanDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      double? progress,
      List<DailyWorkout>? dailyWorkouts});
}

/// @nodoc
class __$$_PlanDetailCopyWithImpl<$Res>
    extends _$PlanDetailCopyWithImpl<$Res, _$_PlanDetail>
    implements _$$_PlanDetailCopyWith<$Res> {
  __$$_PlanDetailCopyWithImpl(
      _$_PlanDetail _value, $Res Function(_$_PlanDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? progress = freezed,
    Object? dailyWorkouts = freezed,
  }) {
    return _then(_$_PlanDetail(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      progress: freezed == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyWorkouts: freezed == dailyWorkouts
          ? _value._dailyWorkouts
          : dailyWorkouts // ignore: cast_nullable_to_non_nullable
              as List<DailyWorkout>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanDetail implements _PlanDetail {
  const _$_PlanDetail(
      {this.name,
      this.description,
      this.startDate,
      this.endDate,
      this.progress,
      final List<DailyWorkout>? dailyWorkouts})
      : _dailyWorkouts = dailyWorkouts;

  factory _$_PlanDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PlanDetailFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? progress;
  final List<DailyWorkout>? _dailyWorkouts;
  @override
  List<DailyWorkout>? get dailyWorkouts {
    final value = _dailyWorkouts;
    if (value == null) return null;
    if (_dailyWorkouts is EqualUnmodifiableListView) return _dailyWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlanDetail(name: $name, description: $description, startDate: $startDate, endDate: $endDate, progress: $progress, dailyWorkouts: $dailyWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality()
                .equals(other._dailyWorkouts, _dailyWorkouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, startDate,
      endDate, progress, const DeepCollectionEquality().hash(_dailyWorkouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanDetailCopyWith<_$_PlanDetail> get copyWith =>
      __$$_PlanDetailCopyWithImpl<_$_PlanDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanDetailToJson(
      this,
    );
  }
}

abstract class _PlanDetail implements PlanDetail {
  const factory _PlanDetail(
      {final String? name,
      final String? description,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? progress,
      final List<DailyWorkout>? dailyWorkouts}) = _$_PlanDetail;

  factory _PlanDetail.fromJson(Map<String, dynamic> json) =
      _$_PlanDetail.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get progress;
  @override
  List<DailyWorkout>? get dailyWorkouts;
  @override
  @JsonKey(ignore: true)
  _$$_PlanDetailCopyWith<_$_PlanDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
