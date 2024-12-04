// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: json['id'] as String,
      isActive: json['isActive'] as bool,
      price: json['price'] as String,
      company: json['company'] as String,
      buyer: json['buyer'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as String,
      registered: DateTime.parse(json['registered'] as String),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'price': instance.price,
      'company': instance.company,
      'buyer': instance.buyer,
      'tags': instance.tags,
      'status': instance.status,
      'registered': instance.registered.toIso8601String(),
    };
