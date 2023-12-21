// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_workout_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyWorkoutDTO _$DailyWorkoutDTOFromJson(Map<String, dynamic> json) {
  return _DailyWorkoutDTO.fromJson(json);
}

/// @nodoc
mixin _$DailyWorkoutDTO {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWorkoutDTOCopyWith<DailyWorkoutDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWorkoutDTOCopyWith<$Res> {
  factory $DailyWorkoutDTOCopyWith(
          DailyWorkoutDTO value, $Res Function(DailyWorkoutDTO) then) =
      _$DailyWorkoutDTOCopyWithImpl<$Res, DailyWorkoutDTO>;
  @useResult
  $Res call({String name, String description, int? time});
}

/// @nodoc
class _$DailyWorkoutDTOCopyWithImpl<$Res, $Val extends DailyWorkoutDTO>
    implements $DailyWorkoutDTOCopyWith<$Res> {
  _$DailyWorkoutDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyWorkoutDTOCopyWith<$Res>
    implements $DailyWorkoutDTOCopyWith<$Res> {
  factory _$$_DailyWorkoutDTOCopyWith(
          _$_DailyWorkoutDTO value, $Res Function(_$_DailyWorkoutDTO) then) =
      __$$_DailyWorkoutDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, int? time});
}

/// @nodoc
class __$$_DailyWorkoutDTOCopyWithImpl<$Res>
    extends _$DailyWorkoutDTOCopyWithImpl<$Res, _$_DailyWorkoutDTO>
    implements _$$_DailyWorkoutDTOCopyWith<$Res> {
  __$$_DailyWorkoutDTOCopyWithImpl(
      _$_DailyWorkoutDTO _value, $Res Function(_$_DailyWorkoutDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? time = freezed,
  }) {
    return _then(_$_DailyWorkoutDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyWorkoutDTO implements _DailyWorkoutDTO {
  const _$_DailyWorkoutDTO(
      {required this.name, required this.description, this.time});

  factory _$_DailyWorkoutDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DailyWorkoutDTOFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final int? time;

  @override
  String toString() {
    return 'DailyWorkoutDTO(name: $name, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyWorkoutDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyWorkoutDTOCopyWith<_$_DailyWorkoutDTO> get copyWith =>
      __$$_DailyWorkoutDTOCopyWithImpl<_$_DailyWorkoutDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyWorkoutDTOToJson(
      this,
    );
  }
}

abstract class _DailyWorkoutDTO implements DailyWorkoutDTO {
  const factory _DailyWorkoutDTO(
      {required final String name,
      required final String description,
      final int? time}) = _$_DailyWorkoutDTO;

  factory _DailyWorkoutDTO.fromJson(Map<String, dynamic> json) =
      _$_DailyWorkoutDTO.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  int? get time;
  @override
  @JsonKey(ignore: true)
  _$$_DailyWorkoutDTOCopyWith<_$_DailyWorkoutDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
