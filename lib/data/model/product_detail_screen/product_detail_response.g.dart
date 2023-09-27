// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailResponse _$ProductDetailResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailResponse(
      data: DataProductDetail.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int,
      message: json['message'] as String,
      errors: json['errors'] as String?,
    );

Map<String, dynamic> _$ProductDetailResponseToJson(
        ProductDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };

DataProductDetail _$DataProductDetailFromJson(Map<String, dynamic> json) =>
    DataProductDetail(
      detailProduct:
          ProductDetail.fromJson(json['detailProduct'] as Map<String, dynamic>),
      relatedProducts: (json['relatedProducts'] as List<dynamic>)
          .map((e) => Product2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataProductDetailToJson(DataProductDetail instance) =>
    <String, dynamic>{
      'detailProduct': instance.detailProduct,
      'relatedProducts': instance.relatedProducts,
    };

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    ProductDetail(
      id: json['_id'] as String,
      name: json['name'] as String,
      price: json['price'] as int,
      currencySymbol:
          stringToCurrencySymbolsType(json['currencySymbol'] as String),
      stock: json['stock'] == null
          ? null
          : StockModel2.fromJson(json['stock'] as Map<String, dynamic>),
      discount: (json['discount'] as num).toDouble(),
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
      vendor: Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
      brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
      description: json['description'] as String? ?? '',
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      slug: json['slug'] as String?,
      link: json['link'] as String?,
      discountPercent: json['discountPercent'] as int?,
      currentPrice: (json['currentPrice'] as num?)?.toDouble(),
      isDeleted: json['isDeleted'] as bool?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortDescription: json['shortDescription'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceRange:
          PriceRange.fromJson(json['priceRange'] as Map<String, dynamic>),
      variantLabel: json['variantLabel'] as String,
      attributeLabel: json['attributeLabel'] as String,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'currencySymbol': currencySymbolsTypeToString(instance.currencySymbol),
      'stock': instance.stock,
      'discount': instance.discount,
      'media': instance.media,
      'vendor': instance.vendor,
      'brand': instance.brand,
      'category': instance.category,
      'slug': instance.slug,
      'link': instance.link,
      'discountPercent': instance.discountPercent,
      'currentPrice': instance.currentPrice,
      'isDeleted': instance.isDeleted,
      'shortDescription': instance.shortDescription,
      'reviews': instance.reviews,
      'variants': instance.variants,
      'priceRange': instance.priceRange,
      'variantLabel': instance.variantLabel,
      'attributeLabel': instance.attributeLabel,
      'amount': instance.amount,
      'description': instance.description,
    };

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) => PriceRange(
      min: json['min'] as int,
      max: json['max'] as int,
    );

Map<String, dynamic> _$PriceRangeToJson(PriceRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

AddToCartRequest _$AddToCartRequestFromJson(Map<String, dynamic> json) =>
    AddToCartRequest(
      productId: json['productId'] as String,
      selectedVariant: json['selectedVariant'] as String?,
      selectedAttribute: json['selectedAttribute'] as String?,
      vendor: json['vendor'] as String?,
      amount: json['amount'] as int? ?? 0,
    );

Map<String, dynamic> _$AddToCartRequestToJson(AddToCartRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'selectedVariant': instance.selectedVariant,
      'selectedAttribute': instance.selectedAttribute,
      'amount': instance.amount,
      'vendor': instance.vendor,
    };

AddToCartResponse _$AddToCartResponseFromJson(Map<String, dynamic> json) =>
    AddToCartResponse(
      data: json['data'] == null
          ? null
          : AddToCartResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$AddToCartResponseToJson(AddToCartResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
    };

AddToCartResponseData _$AddToCartResponseDataFromJson(
        Map<String, dynamic> json) =>
    AddToCartResponseData(
      id: json['_id'] as String,
      product: json['product'] as String,
      amount: json['amount'] as int,
      owner: json['owner'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$AddToCartResponseDataToJson(
        AddToCartResponseData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'product': instance.product,
      'amount': instance.amount,
      'owner': instance.owner,
      'status': instance.status,
    };