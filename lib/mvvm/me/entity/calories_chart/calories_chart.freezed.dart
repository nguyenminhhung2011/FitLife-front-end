// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calories_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CaloriesChart {
  List<int> get calories => throw _privateConstructorUsedError;
  int get heartRate => throw _privateConstructorUsedError;
  double get todo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CaloriesChartCopyWith<CaloriesChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaloriesChartCopyWith<$Res> {
  factory $CaloriesChartCopyWith(
          CaloriesChart value, $Res Function(CaloriesChart) then) =
      _$CaloriesChartCopyWithImpl<$Res, CaloriesChart>;
  @useResult
  $Res call({List<int> calories, int heartRate, double todo});
}

/// @nodoc
class _$CaloriesChartCopyWithImpl<$Res, $Val extends CaloriesChart>
    implements $CaloriesChartCopyWith<$Res> {
  _$CaloriesChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? heartRate = null,
    Object? todo = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<int>,
      heartRate: null == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaloriesChartCopyWith<$Res>
    implements $CaloriesChartCopyWith<$Res> {
  factory _$$_CaloriesChartCopyWith(
          _$_CaloriesChart value, $Res Function(_$_CaloriesChart) then) =
      __$$_CaloriesChartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> calories, int heartRate, double todo});
}

/// @nodoc
class __$$_CaloriesChartCopyWithImpl<$Res>
    extends _$CaloriesChartCopyWithImpl<$Res, _$_CaloriesChart>
    implements _$$_CaloriesChartCopyWith<$Res> {
  __$$_CaloriesChartCopyWithImpl(
      _$_CaloriesChart _value, $Res Function(_$_CaloriesChart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? heartRate = null,
    Object? todo = null,
  }) {
    return _then(_$_CaloriesChart(
      calories: null == calories
          ? _value._calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<int>,
      heartRate: null == heartRate
          ? _value.heartRate
          : heartRate // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CaloriesChart implements _CaloriesChart {
  const _$_CaloriesChart(
      {required final List<int> calories,
      required this.heartRate,
      required this.todo})
      : _calories = calories;

  final List<int> _calories;
  @override
  List<int> get calories {
    if (_calories is EqualUnmodifiableListView) return _calories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calories);
  }

  @override
  final int heartRate;
  @override
  final double todo;

  @override
  String toString() {
    return 'CaloriesChart(calories: $calories, heartRate: $heartRate, todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaloriesChart &&
            const DeepCollectionEquality().equals(other._calories, _calories) &&
            (identical(other.heartRate, heartRate) ||
                other.heartRate == heartRate) &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_calories), heartRate, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaloriesChartCopyWith<_$_CaloriesChart> get copyWith =>
      __$$_CaloriesChartCopyWithImpl<_$_CaloriesChart>(this, _$identity);
}

abstract class _CaloriesChart implements CaloriesChart {
  const factory _CaloriesChart(
      {required final List<int> calories,
      required final int heartRate,
      required final double todo}) = _$_CaloriesChart;

  @override
  List<int> get calories;
  @override
  int get heartRate;
  @override
  double get todo;
  @override
  @JsonKey(ignore: true)
  _$$_CaloriesChartCopyWith<_$_CaloriesChart> get copyWith =>
      throw _privateConstructorUsedError;
}
