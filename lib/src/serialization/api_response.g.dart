// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      json['code'] as int?,
      json['errorCode'] as String?,
      json['message'] as String?,
      json['errorMessage'] as String?,
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'errorCode': instance.errorCode,
      'message': instance.message,
      'errorMessage': instance.errorMessage,
    };
