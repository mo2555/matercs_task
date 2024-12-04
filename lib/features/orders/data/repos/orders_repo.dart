import 'package:dartz/dartz.dart';
import 'package:fk_task/core/services/api/api_errors.dart';
import 'package:fk_task/features/orders/data/models/order_model.dart';

abstract class OrdersRepo{

  Future<Either<Failure,List<OrderModel>>> getOrders();

}