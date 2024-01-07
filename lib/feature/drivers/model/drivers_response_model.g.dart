// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverResponseModel _$DriverResponseModelFromJson(Map<String, dynamic> json) =>
    DriverResponseModel(
      driverId: json['driverId'] as String?,
      permanentNumber: json['permanentNumber'] as String?,
      code: json['code'] as String?,
      url: json['url'] as String?,
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      nationality: json['nationality'] as String?,
    );

Map<String, dynamic> _$DriverResponseModelToJson(
        DriverResponseModel instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'permanentNumber': instance.permanentNumber,
      'code': instance.code,
      'url': instance.url,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
    };
