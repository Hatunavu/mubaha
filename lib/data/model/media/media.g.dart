// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => MediaModel(
      title: json['title'] as String?,
      type: stringToGenderType(json['type'] as String),
      path: json['path'] as String,
    );

Map<String, dynamic> _$MediaModelToJson(MediaModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': genderTypeToString(instance.type),
      'path': instance.path,
    };