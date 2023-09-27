// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product2 _$Product2FromJson(Map<String, dynamic> json) => Product2(
      id: json['_id'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      currencySymbol: json['currencySymbol'] as String,
      discount: (json['discount'] as num).toDouble(),
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
      description: json['description'] as String? ?? '',
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$Product2ToJson(Product2 instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'currencySymbol': instance.currencySymbol,
      'discount': instance.discount,
      'media': instance.media,
      'slug': instance.slug,
      'description': instance.description,
    };

StockModel2 _$StockModel2FromJson(Map<String, dynamic> json) => StockModel2(
      quantity: json['quantity'] as int? ?? 1,
      status: stringToStockStatusType(json['status'] as String),
    );

Map<String, dynamic> _$StockModel2ToJson(StockModel2 instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'status': stockStatusTypeToString(instance.status),
    };

ParentsCategories2 _$ParentsCategories2FromJson(Map<String, dynamic> json) =>
    ParentsCategories2(
      firstLevel: json['firstLevel'] == null
          ? null
          : Category.fromJson(json['firstLevel'] as Map<String, dynamic>),
      secondLevel: json['secondLevel'] == null
          ? null
          : Category.fromJson(json['secondLevel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParentsCategories2ToJson(ParentsCategories2 instance) =>
    <String, dynamic>{
      'firstLevel': instance.firstLevel,
      'secondLevel': instance.secondLevel,
    };