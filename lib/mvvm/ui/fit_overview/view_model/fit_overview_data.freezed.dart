// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fit_overview_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FitOverViewData {
  List<DateTime> get rangeDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FitOverViewDataCopyWith<FitOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitOverViewDataCopyWith<$Res> {
  factory $FitOverViewDataCopyWith(
          FitOverViewData value, $Res Function(FitOverViewData) then) =
      _$FitOverViewDataCopyWithImpl<$Res, FitOverViewData>;
  @useResult
  $Res call({List<DateTime> rangeDate});
}

/// @nodoc
class _$FitOverViewDataCopyWithImpl<$Res, $Val extends FitOverViewData>
    implements $FitOverViewDataCopyWith<$Res> {
  _$FitOverViewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeDate = null,
  }) {
    return _then(_value.copyWith(
      rangeDate: null == rangeDate
          ? _value.rangeDate
          : rangeDate // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FitOverViewDataCopyWith<$Res>
    implements $FitOverViewDataCopyWith<$Res> {
  factory _$$_FitOverViewDataCopyWith(
          _$_FitOverViewData value, $Res Function(_$_FitOverViewData) then) =
      __$$_FitOverViewDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DateTime> rangeDate});
}

/// @nodoc
class __$$_FitOverViewDataCopyWithImpl<$Res>
    extends _$FitOverViewDataCopyWithImpl<$Res, _$_FitOverViewData>
    implements _$$_FitOverViewDataCopyWith<$Res> {
  __$$_FitOverViewDataCopyWithImpl(
      _$_FitOverViewData _value, $Res Function(_$_FitOverViewData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeDate = null,
  }) {
    return _then(_$_FitOverViewData(
      rangeDate: null == rangeDate
          ? _value._rangeDate
          : rangeDate // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$_FitOverViewData implements _FitOverViewData {
  const _$_FitOverViewData({final List<DateTime> rangeDate = const []})
      : _rangeDate = rangeDate;

  final List<DateTime> _rangeDate;
  @override
  @JsonKey()
  List<DateTime> get rangeDate {
    if (_rangeDate is EqualUnmodifiableListView) return _rangeDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rangeDate);
  }

  @override
  String toString() {
    return 'FitOverViewData(rangeDate: $rangeDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FitOverViewData &&
            const DeepCollectionEquality()
                .equals(other._rangeDate, _rangeDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rangeDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FitOverViewDataCopyWith<_$_FitOverViewData> get copyWith =>
      __$$_FitOverViewDataCopyWithImpl<_$_FitOverViewData>(this, _$identity);
}

abstract class _FitOverViewData implements FitOverViewData {
  const factory _FitOverViewData({final List<DateTime> rangeDate}) =
      _$_FitOverViewData;

  @override
  List<DateTime> get rangeDate;
  @override
  @JsonKey(ignore: true)
  _$$_FitOverViewDataCopyWith<_$_FitOverViewData> get copyWith =>
      throw _privateConstructorUsedError;
}
