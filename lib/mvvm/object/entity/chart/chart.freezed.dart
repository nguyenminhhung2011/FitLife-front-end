// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Chart {
  int get calories => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartCopyWith<Chart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartCopyWith<$Res> {
  factory $ChartCopyWith(Chart value, $Res Function(Chart) then) =
      _$ChartCopyWithImpl<$Res, Chart>;
  @useResult
  $Res call({int calories, DateTime time});
}

/// @nodoc
class _$ChartCopyWithImpl<$Res, $Val extends Chart>
    implements $ChartCopyWith<$Res> {
  _$ChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartCopyWith<$Res> implements $ChartCopyWith<$Res> {
  factory _$$_ChartCopyWith(_$_Chart value, $Res Function(_$_Chart) then) =
      __$$_ChartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int calories, DateTime time});
}

/// @nodoc
class __$$_ChartCopyWithImpl<$Res> extends _$ChartCopyWithImpl<$Res, _$_Chart>
    implements _$$_ChartCopyWith<$Res> {
  __$$_ChartCopyWithImpl(_$_Chart _value, $Res Function(_$_Chart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? time = null,
  }) {
    return _then(_$_Chart(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Chart implements _Chart {
  const _$_Chart({required this.calories, required this.time});

  @override
  final int calories;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Chart(calories: $calories, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chart &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calories, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChartCopyWith<_$_Chart> get copyWith =>
      __$$_ChartCopyWithImpl<_$_Chart>(this, _$identity);
}

abstract class _Chart implements Chart {
  const factory _Chart(
      {required final int calories, required final DateTime time}) = _$_Chart;

  @override
  int get calories;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$_ChartCopyWith<_$_Chart> get copyWith =>
      throw _privateConstructorUsedError;
}
