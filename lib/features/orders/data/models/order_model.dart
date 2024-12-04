import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';
//TODO: If you have any error in this file please run this cmd : flutter pub run build_runner build
@JsonSerializable()
class OrderModel {
  final String id;
  final bool isActive;
  final String price;
  final String company;
  final String buyer;
  final List<String> tags;
  final String status;
  final DateTime registered;

  OrderModel({
    required this.id,
    required this.isActive,
    required this.price,
    required this.company,
    required this.buyer,
    required this.tags,
    required this.status,
    required this.registered,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}

