// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorypage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryPageResponse _$CategoryPageResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryPageResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int,
    );

Map<String, dynamic> _$CategoryPageResponseToJson(
        CategoryPageResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };