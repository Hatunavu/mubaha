// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['_id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      parents: json['parents'] == null
          ? null
          : CategoryParents.fromJson(json['parents'] as Map<String, dynamic>),
      featuredImage: json['featuredImage'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'parents': instance.parents,
      'media': instance.media,
      'featuredImage': instance.featuredImage,
      'isDeleted': instance.isDeleted,
    };

CategoryParents _$CategoryParentsFromJson(Map<String, dynamic> json) =>
    CategoryParents(
      firstLevel: json['firstLevel'] == null
          ? null
          : Category.fromJson(json['firstLevel'] as Map<String, dynamic>),
      secondLevel: json['secondLevel'] == null
          ? null
          : Category.fromJson(json['secondLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryParentsToJson(CategoryParents instance) =>
    <String, dynamic>{
      'firstLevel': instance.firstLevel,
      'secondLevel': instance.secondLevel,
    };

CategoryHomepage _$CategoryHomepageFromJson(Map<String, dynamic> json) =>
    CategoryHomepage(
      id: json['_id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      featuredImage: json['featuredImage'] as String,
    );

Map<String, dynamic> _$CategoryHomepageToJson(CategoryHomepage instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'featuredImage': instance.featuredImage,
    };