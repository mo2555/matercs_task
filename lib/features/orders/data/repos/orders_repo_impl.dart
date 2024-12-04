import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fk_task/core/services/api/api_errors.dart';
import 'package:fk_task/core/services/navigator/navigator_service.dart';
import 'package:fk_task/features/orders/data/models/order_model.dart';
import 'package:fk_task/features/orders/data/repos/orders_repo.dart';
import 'package:flutter/material.dart';

class OrdersRepoImpl implements OrdersRepo {
  @override
  Future<Either<Failure, List<OrderModel>>> getOrders() async {
    try {
      final String response =
          await DefaultAssetBundle.of(NavigatorService.getContext()!)
              .loadString('assets/orders.json');
      final List<dynamic> data = json.decode(response);
      return Right(data.map((order) => OrderModel.fromJson(order)).toList());
    } catch (exception) {
      return Left(ServerFailure.generalException(exception));
    }
  }
}
