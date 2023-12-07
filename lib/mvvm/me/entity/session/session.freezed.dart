// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get dwId => throw _privateConstructorUsedError;
  Level? get level => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get calcTarget => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  List<Equipment>? get equipments => throw _privateConstructorUsedError;
  List<Exercise>? get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      String dwId,
      Level? level,
      String? description,
      String? name,
      int? calcTarget,
      int? time,
      List<Equipment>? equipments,
      List<Exercise>? exercises});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dwId = null,
    Object? level = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? calcTarget = freezed,
    Object? time = freezed,
    Object? equipments = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dwId: null == dwId
          ? _value.dwId
          : dwId // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      calcTarget: freezed == calcTarget
          ? _value.calcTarget
          : calcTarget // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      equipments: freezed == equipments
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      exercises: freezed == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String dwId,
      Level? level,
      String? description,
      String? name,
      int? calcTarget,
      int? time,
      List<Equipment>? equipments,
      List<Exercise>? exercises});
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$_Session>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dwId = null,
    Object? level = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? calcTarget = freezed,
    Object? time = freezed,
    Object? equipments = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_$_Session(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dwId: null == dwId
          ? _value.dwId
          : dwId // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      calcTarget: freezed == calcTarget
          ? _value.calcTarget
          : calcTarget // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      equipments: freezed == equipments
          ? _value._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      exercises: freezed == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session implements _Session {
  const _$_Session(
      {required this.id,
      required this.dwId,
      this.level,
      this.description,
      this.name,
      this.calcTarget,
      this.time,
      final List<Equipment>? equipments,
      final List<Exercise>? exercises})
      : _equipments = equipments,
        _exercises = exercises;

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  final String id;
  @override
  final String dwId;
  @override
  final Level? level;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final int? calcTarget;
  @override
  final int? time;
  final List<Equipment>? _equipments;
  @override
  List<Equipment>? get equipments {
    final value = _equipments;
    if (value == null) return null;
    if (_equipments is EqualUnmodifiableListView) return _equipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exercise>? _exercises;
  @override
  List<Exercise>? get exercises {
    final value = _exercises;
    if (value == null) return null;
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Session(id: $id, dwId: $dwId, level: $level, description: $description, name: $name, calcTarget: $calcTarget, time: $time, equipments: $equipments, exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dwId, dwId) || other.dwId == dwId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.calcTarget, calcTarget) ||
                other.calcTarget == calcTarget) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dwId,
      level,
      description,
      name,
      calcTarget,
      time,
      const DeepCollectionEquality().hash(_equipments),
      const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final String dwId,
      final Level? level,
      final String? description,
      final String? name,
      final int? calcTarget,
      final int? time,
      final List<Equipment>? equipments,
      final List<Exercise>? exercises}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  String get id;
  @override
  String get dwId;
  @override
  Level? get level;
  @override
  String? get description;
  @override
  String? get name;
  @override
  int? get calcTarget;
  @override
  int? get time;
  @override
  List<Equipment>? get equipments;
  @override
  List<Exercise>? get exercises;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$Equipment {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res, Equipment>;
  @useResult
  $Res call(
      {String image,
      String name,
      String description,
      String type,
      int? quantity});
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res, $Val extends Equipment>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentCopyWith<$Res> implements $EquipmentCopyWith<$Res> {
  factory _$$_EquipmentCopyWith(
          _$_Equipment value, $Res Function(_$_Equipment) then) =
      __$$_EquipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      String name,
      String description,
      String type,
      int? quantity});
}

/// @nodoc
class __$$_EquipmentCopyWithImpl<$Res>
    extends _$EquipmentCopyWithImpl<$Res, _$_Equipment>
    implements _$$_EquipmentCopyWith<$Res> {
  __$$_EquipmentCopyWithImpl(
      _$_Equipment _value, $Res Function(_$_Equipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? quantity = freezed,
  }) {
    return _then(_$_Equipment(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Equipment implements _Equipment {
  const _$_Equipment(
      {required this.image,
      required this.name,
      required this.description,
      required this.type,
      this.quantity});

  factory _$_Equipment.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String description;
  @override
  final String type;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'Equipment(image: $image, name: $name, description: $description, type: $type, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Equipment &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, name, description, type, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentCopyWith<_$_Equipment> get copyWith =>
      __$$_EquipmentCopyWithImpl<_$_Equipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentToJson(
      this,
    );
  }
}

abstract class _Equipment implements Equipment {
  const factory _Equipment(
      {required final String image,
      required final String name,
      required final String description,
      required final String type,
      final int? quantity}) = _$_Equipment;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$_Equipment.fromJson;

  @override
  String get image;
  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentCopyWith<_$_Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}
