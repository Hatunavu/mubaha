// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShipmentModel _$ShipmentModelFromJson(Map<String, dynamic> json) =>
    ShipmentModel(
      message: json['message'] as String,
      status: json['status'] as int,
      error: json['error'] as String?,
      data: json['data'] == null
          ? null
          : ShipmentData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShipmentModelToJson(ShipmentModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
      'error': instance.error,
    };

ShipmentData _$ShipmentDataFromJson(Map<String, dynamic> json) => ShipmentData(
      id: json['_id'] as String,
      proccessingInfo: OrderProccessingInfo.fromJson(
          json['proccessingInfo'] as Map<String, dynamic>),
      shipment: Shipment.fromJson(json['shipment'] as Map<String, dynamic>),
      shipmentMethod: OrderShipmentMethod.fromJson(
          json['shipmentMethod'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShipmentDataToJson(ShipmentData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'proccessingInfo': instance.proccessingInfo,
      'shipmentMethod': instance.shipmentMethod,
      'shipment': instance.shipment,
    };

Shipment _$ShipmentFromJson(Map<String, dynamic> json) => Shipment(
      id: json['_id'] as String,
      shipmentId: json['shipmentId'] as String,
      status: json['status'] as String,
      details: (json['details'] as List<dynamic>)
          .map((e) => ShipmentDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShipmentToJson(Shipment instance) => <String, dynamic>{
      '_id': instance.id,
      'status': instance.status,
      'shipmentId': instance.shipmentId,
      'details': instance.details,
    };

ShipmentDetails _$ShipmentDetailsFromJson(Map<String, dynamic> json) =>
    ShipmentDetails(
      id: json['_id'] as String,
      note: json['note'] as String?,
      processedAt: DateTime.parse(json['processedAt'] as String),
      shipment: json['shipment'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ShipmentDetailsToJson(ShipmentDetails instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'processedAt': instance.processedAt.toIso8601String(),
      'shipment': instance.shipment,
    };
