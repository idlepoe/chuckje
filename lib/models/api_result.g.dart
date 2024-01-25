// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) => ApiResult(
      json['list_total_count'] as int,
      CodeMessage.fromJson(json['RESULT'] as Map<String, dynamic>),
      (json['row'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiResultToJson(ApiResult instance) => <String, dynamic>{
      'list_total_count': instance.list_total_count,
      'RESULT': instance.RESULT,
      'row': instance.row,
    };
