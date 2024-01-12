// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpComingSession {
  Session get session => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpComingSessionCopyWith<UpComingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpComingSessionCopyWith<$Res> {
  factory $UpComingSessionCopyWith(
          UpComingSession value, $Res Function(UpComingSession) then) =
      _$UpComingSessionCopyWithImpl<$Res, UpComingSession>;
  @useResult
  $Res call({Session session, DateTime time});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$UpComingSessionCopyWithImpl<$Res, $Val extends UpComingSession>
    implements $UpComingSessionCopyWith<$Res> {
  _$UpComingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpComingSessionCopyWith<$Res>
    implements $UpComingSessionCopyWith<$Res> {
  factory _$$_UpComingSessionCopyWith(
          _$_UpComingSession value, $Res Function(_$_UpComingSession) then) =
      __$$_UpComingSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Session session, DateTime time});

  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$_UpComingSessionCopyWithImpl<$Res>
    extends _$UpComingSessionCopyWithImpl<$Res, _$_UpComingSession>
    implements _$$_UpComingSessionCopyWith<$Res> {
  __$$_UpComingSessionCopyWithImpl(
      _$_UpComingSession _value, $Res Function(_$_UpComingSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
    Object? time = null,
  }) {
    return _then(_$_UpComingSession(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UpComingSession implements _UpComingSession {
  const _$_UpComingSession({required this.session, required this.time});

  @override
  final Session session;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'UpComingSession(session: $session, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpComingSession &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpComingSessionCopyWith<_$_UpComingSession> get copyWith =>
      __$$_UpComingSessionCopyWithImpl<_$_UpComingSession>(this, _$identity);
}

abstract class _UpComingSession implements UpComingSession {
  const factory _UpComingSession(
      {required final Session session,
      required final DateTime time}) = _$_UpComingSession;

  @override
  Session get session;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$_UpComingSessionCopyWith<_$_UpComingSession> get copyWith =>
      throw _privateConstructorUsedError;
}
