// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_plan_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionPlanData {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  List<Session>? get sessions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionPlanDataCopyWith<SessionPlanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionPlanDataCopyWith<$Res> {
  factory $SessionPlanDataCopyWith(
          SessionPlanData value, $Res Function(SessionPlanData) then) =
      _$SessionPlanDataCopyWithImpl<$Res, SessionPlanData>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? id,
      int? time,
      List<Session>? sessions});
}

/// @nodoc
class _$SessionPlanDataCopyWithImpl<$Res, $Val extends SessionPlanData>
    implements $SessionPlanDataCopyWith<$Res> {
  _$SessionPlanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? time = freezed,
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      sessions: freezed == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionPlanDataCopyWith<$Res>
    implements $SessionPlanDataCopyWith<$Res> {
  factory _$$_SessionPlanDataCopyWith(
          _$_SessionPlanData value, $Res Function(_$_SessionPlanData) then) =
      __$$_SessionPlanDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      int? id,
      int? time,
      List<Session>? sessions});
}

/// @nodoc
class __$$_SessionPlanDataCopyWithImpl<$Res>
    extends _$SessionPlanDataCopyWithImpl<$Res, _$_SessionPlanData>
    implements _$$_SessionPlanDataCopyWith<$Res> {
  __$$_SessionPlanDataCopyWithImpl(
      _$_SessionPlanData _value, $Res Function(_$_SessionPlanData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? time = freezed,
    Object? sessions = freezed,
  }) {
    return _then(_$_SessionPlanData(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      sessions: freezed == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>?,
    ));
  }
}

/// @nodoc

class _$_SessionPlanData implements _SessionPlanData {
  const _$_SessionPlanData(
      {this.title,
      this.description,
      this.id,
      this.time,
      final List<Session>? sessions})
      : _sessions = sessions;

  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? id;
  @override
  final int? time;
  final List<Session>? _sessions;
  @override
  List<Session>? get sessions {
    final value = _sessions;
    if (value == null) return null;
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SessionPlanData(title: $title, description: $description, id: $id, time: $time, sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionPlanData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, id, time,
      const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionPlanDataCopyWith<_$_SessionPlanData> get copyWith =>
      __$$_SessionPlanDataCopyWithImpl<_$_SessionPlanData>(this, _$identity);
}

abstract class _SessionPlanData implements SessionPlanData {
  const factory _SessionPlanData(
      {final String? title,
      final String? description,
      final int? id,
      final int? time,
      final List<Session>? sessions}) = _$_SessionPlanData;

  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get id;
  @override
  int? get time;
  @override
  List<Session>? get sessions;
  @override
  @JsonKey(ignore: true)
  _$$_SessionPlanDataCopyWith<_$_SessionPlanData> get copyWith =>
      throw _privateConstructorUsedError;
}
