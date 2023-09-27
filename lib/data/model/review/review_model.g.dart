// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      id: json['_id'] as String,
      content: json['content'] as String,
      reviewer: Account.fromJson(json['reviewer'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      product: json['product'] as String?,
      gallery: (json['gallery'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'reviewer': instance.reviewer,
      'rating': instance.rating,
      'gallery': instance.gallery,
      'product': instance.product,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };