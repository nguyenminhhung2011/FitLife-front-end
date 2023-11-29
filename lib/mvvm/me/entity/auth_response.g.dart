// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticateResponse _$$_AuthenticateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticateResponse(
      jwt: json['jwt'] as String? ?? "",
      refreshToken: json['refreshToken'] as String? ?? "",
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthenticateResponseToJson(
        _$_AuthenticateResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'refreshToken': instance.refreshToken,
      'user': instance.user,
    };
