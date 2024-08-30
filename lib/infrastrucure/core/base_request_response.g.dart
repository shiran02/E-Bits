// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl _$$BaseResponseImplFromJson(Map<String, dynamic> json) =>
    _$BaseResponseImpl(
      success: json['success'] as bool? ?? false,
      data: json['data'] as List<dynamic>?,
      info: json['info'] as String?,
      error: json['error'] as String?,
      code: (json['code'] as num?)?.toInt() ?? 200,
    );

Map<String, dynamic> _$$BaseResponseImplToJson(_$BaseResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'info': instance.info,
      'error': instance.error,
      'code': instance.code,
    };
