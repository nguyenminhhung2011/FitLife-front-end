// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInData {
  String? get emailError => throw _privateConstructorUsedError;
  String? get passwordError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInDataCopyWith<SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDataCopyWith<$Res> {
  factory $SignInDataCopyWith(
          SignInData value, $Res Function(SignInData) then) =
      _$SignInDataCopyWithImpl<$Res, SignInData>;
  @useResult
  $Res call({String? emailError, String? passwordError});
}

/// @nodoc
class _$SignInDataCopyWithImpl<$Res, $Val extends SignInData>
    implements $SignInDataCopyWith<$Res> {
  _$SignInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_value.copyWith(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInDataCopyWith<$Res>
    implements $SignInDataCopyWith<$Res> {
  factory _$$_SignInDataCopyWith(
          _$_SignInData value, $Res Function(_$_SignInData) then) =
      __$$_SignInDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailError, String? passwordError});
}

/// @nodoc
class __$$_SignInDataCopyWithImpl<$Res>
    extends _$SignInDataCopyWithImpl<$Res, _$_SignInData>
    implements _$$_SignInDataCopyWith<$Res> {
  __$$_SignInDataCopyWithImpl(
      _$_SignInData _value, $Res Function(_$_SignInData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_$_SignInData(
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignInData implements _SignInData {
  const _$_SignInData({this.emailError, this.passwordError});

  @override
  final String? emailError;
  @override
  final String? passwordError;

  @override
  String toString() {
    return 'SignInData(emailError: $emailError, passwordError: $passwordError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInData &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailError, passwordError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInDataCopyWith<_$_SignInData> get copyWith =>
      __$$_SignInDataCopyWithImpl<_$_SignInData>(this, _$identity);
}

abstract class _SignInData implements SignInData {
  const factory _SignInData(
      {final String? emailError, final String? passwordError}) = _$_SignInData;

  @override
  String? get emailError;
  @override
  String? get passwordError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInDataCopyWith<_$_SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}
