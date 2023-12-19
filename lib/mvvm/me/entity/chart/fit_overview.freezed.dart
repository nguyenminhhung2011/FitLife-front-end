// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fit_overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FitOverview {
  int get calories => throw _privateConstructorUsedError;
  double get todoPercent => throw _privateConstructorUsedError;
  List<Chart> get chartData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FitOverviewCopyWith<FitOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitOverviewCopyWith<$Res> {
  factory $FitOverviewCopyWith(
          FitOverview value, $Res Function(FitOverview) then) =
      _$FitOverviewCopyWithImpl<$Res, FitOverview>;
  @useResult
  $Res call({int calories, double todoPercent, List<Chart> chartData});
}

/// @nodoc
class _$FitOverviewCopyWithImpl<$Res, $Val extends FitOverview>
    implements $FitOverviewCopyWith<$Res> {
  _$FitOverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? todoPercent = null,
    Object? chartData = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      todoPercent: null == todoPercent
          ? _value.todoPercent
          : todoPercent // ignore: cast_nullable_to_non_nullable
              as double,
      chartData: null == chartData
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<Chart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FitOverviewCopyWith<$Res>
    implements $FitOverviewCopyWith<$Res> {
  factory _$$_FitOverviewCopyWith(
          _$_FitOverview value, $Res Function(_$_FitOverview) then) =
      __$$_FitOverviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int calories, double todoPercent, List<Chart> chartData});
}

/// @nodoc
class __$$_FitOverviewCopyWithImpl<$Res>
    extends _$FitOverviewCopyWithImpl<$Res, _$_FitOverview>
    implements _$$_FitOverviewCopyWith<$Res> {
  __$$_FitOverviewCopyWithImpl(
      _$_FitOverview _value, $Res Function(_$_FitOverview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? todoPercent = null,
    Object? chartData = null,
  }) {
    return _then(_$_FitOverview(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      todoPercent: null == todoPercent
          ? _value.todoPercent
          : todoPercent // ignore: cast_nullable_to_non_nullable
              as double,
      chartData: null == chartData
          ? _value._chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<Chart>,
    ));
  }
}

/// @nodoc

class _$_FitOverview implements _FitOverview {
  const _$_FitOverview(
      {required this.calories,
      required this.todoPercent,
      required final List<Chart> chartData})
      : _chartData = chartData;

  @override
  final int calories;
  @override
  final double todoPercent;
  final List<Chart> _chartData;
  @override
  List<Chart> get chartData {
    if (_chartData is EqualUnmodifiableListView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  @override
  String toString() {
    return 'FitOverview(calories: $calories, todoPercent: $todoPercent, chartData: $chartData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FitOverview &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.todoPercent, todoPercent) ||
                other.todoPercent == todoPercent) &&
            const DeepCollectionEquality()
                .equals(other._chartData, _chartData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calories, todoPercent,
      const DeepCollectionEquality().hash(_chartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FitOverviewCopyWith<_$_FitOverview> get copyWith =>
      __$$_FitOverviewCopyWithImpl<_$_FitOverview>(this, _$identity);
}

abstract class _FitOverview implements FitOverview {
  const factory _FitOverview(
      {required final int calories,
      required final double todoPercent,
      required final List<Chart> chartData}) = _$_FitOverview;

  @override
  int get calories;
  @override
  double get todoPercent;
  @override
  List<Chart> get chartData;
  @override
  @JsonKey(ignore: true)
  _$$_FitOverviewCopyWith<_$_FitOverview> get copyWith =>
      throw _privateConstructorUsedError;
}
