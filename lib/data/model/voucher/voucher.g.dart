// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Voucher _$VoucherFromJson(Map<String, dynamic> json) => Voucher(
      message: json['message'] as String,
      status: json['status'] as int,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : VoucherData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VoucherToJson(Voucher instance) => <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
    };

VoucherData _$VoucherDataFromJson(Map<String, dynamic> json) => VoucherData(
      hasNextPage: json['hasNextPage'] as bool,
      hasPrevPage: json['hasPrevPage'] as bool,
      limit: json['limit'] as int,
      page: json['page'] as int,
      pagingCounter: json['pagingCounter'] as int,
      totalDocs: json['totalDocs'] as int,
      totalPages: json['totalPages'] as int,
      docs: (json['docs'] as List<dynamic>)
          .map((e) => VoucherDocs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VoucherDataToJson(VoucherData instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'totalDocs': instance.totalDocs,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'hasPrevPage': instance.hasPrevPage,
      'hasNextPage': instance.hasNextPage,
    };

VoucherDocs _$VoucherDocsFromJson(Map<String, dynamic> json) => VoucherDocs(
      active: json['active'] as bool,
      code: json['code'] as String,
      currencySymbol:
          stringToCurrencySymbolsType(json['currencySymbol'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      id: json['_id'] as String,
      maxVoucherAmount: json['maxVoucherAmount'] as int,
      minBasketPrice: (json['minBasketPrice'] as num).toDouble(),
      startDate: DateTime.parse(json['startDate'] as String),
      status: json['status'] as String,
      title: json['title'] as String,
      totalUsed: json['totalUsed'] as int,
      type: json['type'] as String,
      usageLimitQuantity: json['usageLimitQuantity'] as int,
      vendor: json['vendor'] as String?,
      discount:
          VoucherDiscount.fromJson(json['discount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VoucherDocsToJson(VoucherDocs instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      '_id': instance.id,
      'title': instance.title,
      'minBasketPrice': instance.minBasketPrice,
      'usageLimitQuantity': instance.usageLimitQuantity,
      'totalUsed': instance.totalUsed,
      'maxVoucherAmount': instance.maxVoucherAmount,
      'vendor': instance.vendor,
      'active': instance.active,
      'code': instance.code,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'type': instance.type,
      'currencySymbol': currencySymbolsTypeToString(instance.currencySymbol),
      'status': instance.status,
    };

VoucherDiscount _$VoucherDiscountFromJson(Map<String, dynamic> json) =>
    VoucherDiscount(
      amount: json['amount'] as int,
      type: stringToVoucherType(json['type'] as String),
    );

Map<String, dynamic> _$VoucherDiscountToJson(VoucherDiscount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': voucherTypeToString(instance.type),
    };