// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_pt_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllPtData {
  List<Trainer> get trainers => throw _privateConstructorUsedError;
  String get searchContent => throw _privateConstructorUsedError;
  String? get trainerType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllPtDataCopyWith<AllPtData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPtDataCopyWith<$Res> {
  factory $AllPtDataCopyWith(AllPtData value, $Res Function(AllPtData) then) =
      _$AllPtDataCopyWithImpl<$Res, AllPtData>;
  @useResult
  $Res call(
      {List<Trainer> trainers, String searchContent, String? trainerType});
}

/// @nodoc
class _$AllPtDataCopyWithImpl<$Res, $Val extends AllPtData>
    implements $AllPtDataCopyWith<$Res> {
  _$AllPtDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainers = null,
    Object? searchContent = null,
    Object? trainerType = freezed,
  }) {
    return _then(_value.copyWith(
      trainers: null == trainers
          ? _value.trainers
          : trainers // ignore: cast_nullable_to_non_nullable
              as List<Trainer>,
      searchContent: null == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String,
      trainerType: freezed == trainerType
          ? _value.trainerType
          : trainerType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllPtDataCopyWith<$Res> implements $AllPtDataCopyWith<$Res> {
  factory _$$_AllPtDataCopyWith(
          _$_AllPtData value, $Res Function(_$_AllPtData) then) =
      __$$_AllPtDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Trainer> trainers, String searchContent, String? trainerType});
}

/// @nodoc
class __$$_AllPtDataCopyWithImpl<$Res>
    extends _$AllPtDataCopyWithImpl<$Res, _$_AllPtData>
    implements _$$_AllPtDataCopyWith<$Res> {
  __$$_AllPtDataCopyWithImpl(
      _$_AllPtData _value, $Res Function(_$_AllPtData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainers = null,
    Object? searchContent = null,
    Object? trainerType = freezed,
  }) {
    return _then(_$_AllPtData(
      trainers: null == trainers
          ? _value._trainers
          : trainers // ignore: cast_nullable_to_non_nullable
              as List<Trainer>,
      searchContent: null == searchContent
          ? _value.searchContent
          : searchContent // ignore: cast_nullable_to_non_nullable
              as String,
      trainerType: freezed == trainerType
          ? _value.trainerType
          : trainerType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AllPtData implements _AllPtData {
  const _$_AllPtData(
      {required final List<Trainer> trainers,
      required this.searchContent,
      this.trainerType})
      : _trainers = trainers;

  final List<Trainer> _trainers;
  @override
  List<Trainer> get trainers {
    if (_trainers is EqualUnmodifiableListView) return _trainers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainers);
  }

  @override
  final String searchContent;
  @override
  final String? trainerType;

  @override
  String toString() {
    return 'AllPtData(trainers: $trainers, searchContent: $searchContent, trainerType: $trainerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllPtData &&
            const DeepCollectionEquality().equals(other._trainers, _trainers) &&
            (identical(other.searchContent, searchContent) ||
                other.searchContent == searchContent) &&
            (identical(other.trainerType, trainerType) ||
                other.trainerType == trainerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trainers),
      searchContent,
      trainerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllPtDataCopyWith<_$_AllPtData> get copyWith =>
      __$$_AllPtDataCopyWithImpl<_$_AllPtData>(this, _$identity);
}

abstract class _AllPtData implements AllPtData {
  const factory _AllPtData(
      {required final List<Trainer> trainers,
      required final String searchContent,
      final String? trainerType}) = _$_AllPtData;

  @override
  List<Trainer> get trainers;
  @override
  String get searchContent;
  @override
  String? get trainerType;
  @override
  @JsonKey(ignore: true)
  _$$_AllPtDataCopyWith<_$_AllPtData> get copyWith =>
      throw _privateConstructorUsedError;
}
