// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorResponse _$VendorResponseFromJson(Map<String, dynamic> json) =>
    VendorResponse(
      data: VendorData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int,
      message: json['message'] as String,
      errors: json['errors'] as String?,
    );

Map<String, dynamic> _$VendorResponseToJson(VendorResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };

VendorData _$VendorDataFromJson(Map<String, dynamic> json) => VendorData(
      vendor: Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
      dealsOfTheDay: (json['dealsOfTheDay'] as List<dynamic>)
          .map((e) => Product2.fromJson(e as Map<String, dynamic>))
          .toList(),
      flashSales: (json['flashSales'] as List<dynamic>)
          .map((e) => Product2.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedForYou: (json['suggestedForYou'] as List<dynamic>)
          .map((e) => Product2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VendorDataToJson(VendorData instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'dealsOfTheDay': instance.dealsOfTheDay,
      'flashSales': instance.flashSales,
      'suggestedForYou': instance.suggestedForYou,
    };

Vendor _$VendorFromJson(Map<String, dynamic> json) => Vendor(
      id: json['_id'] as String,
      details: json['details'] as String,
      owner: json['owner'] as String,
      cover: json['cover'] as String,
      active: json['active'] as bool,
      brandName: json['brandName'] as String,
      gallery: json['gallery'] as List<dynamic>,
      socialLinks:
          SocialLinks.fromJson(json['socialLinks'] as Map<String, dynamic>),
      avatar: json['avatar'] as String,
      banner: json['banner'] as String?,
      followers: json['followers'] as int,
      ratingOverall: (json['ratingOverall'] as num).toDouble(),
      responseRate: json['responseRate'] as int,
    );

Map<String, dynamic> _$VendorToJson(Vendor instance) => <String, dynamic>{
      '_id': instance.id,
      'details': instance.details,
      'owner': instance.owner,
      'cover': instance.cover,
      'active': instance.active,
      'brandName': instance.brandName,
      'gallery': instance.gallery,
      'socialLinks': instance.socialLinks,
      'avatar': instance.avatar,
      'banner': instance.banner,
      'ratingOverall': instance.ratingOverall,
      'followers': instance.followers,
      'responseRate': instance.responseRate,
    };

SocialLinks _$SocialLinksFromJson(Map<String, dynamic> json) => SocialLinks(
      facebook: json['facebook'] as String,
      youtube: json['youtube'] as String,
      tiktok: json['tiktok'] as String,
      instagram: json['instagram'] as String,
    );

Map<String, dynamic> _$SocialLinksToJson(SocialLinks instance) =>
    <String, dynamic>{
      'facebook': instance.facebook,
      'youtube': instance.youtube,
      'tiktok': instance.tiktok,
      'instagram': instance.instagram,
    };