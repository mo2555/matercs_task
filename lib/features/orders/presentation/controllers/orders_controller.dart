import 'package:easy_localization/easy_localization.dart';
import 'package:fk_task/core/helper/app_helper.dart';
import 'package:fk_task/features/orders/data/models/order_model.dart';
import 'package:fk_task/features/orders/data/repos/orders_repo.dart';
import 'package:flutter/material.dart';

class OrdersController extends ChangeNotifier {
  OrdersController(this._repo);

  final OrdersRepo _repo;

  bool getOrdersLoading = false;

  Future<void> getOrders() async {
    getOrdersLoading = true;
    notifyListeners();
    final result = await _repo.getOrders();

    result.fold((l) {
      getOrdersLoading = true;
      notifyListeners();
      AppHelper.showToast(message: l.msg);
    }, (orders) {
      orders;
      _setUpAverage(orders);
      _setUpGraph(orders);
      getOrdersLoading = true;
      notifyListeners();
    });
  }

  int totalCount = 0;
  double totalPrice = 0;
  String averagePrice = '';
  int returnsCount = 0;

  void _setUpAverage(List<OrderModel> orders) {
    totalCount = orders.length;
    totalPrice = orders
        .map((order) =>
            double.parse(order.price.replaceAll(RegExp(r'[^\d.]'), '')))
        .reduce((value, element) => value + element);
    averagePrice = (totalPrice / totalCount).toStringAsFixed(2);
    returnsCount = orders.where((order) => order.status == 'RETURNED').length;
  }

  List<String> months = [];

  List<int> counts = [];

  Map<String, int> _groupOrdersByMonth(List<OrderModel> orders) {
    final Map<String, int> monthlyOrders = {};

    for (var order in orders) {
      final DateTime date = order.registered;
      final String monthYear = DateFormat('MMM yyyy').format(date);

      if (monthlyOrders.containsKey(monthYear)) {
        monthlyOrders[monthYear] = monthlyOrders[monthYear]! + 1;
      } else {
        monthlyOrders[monthYear] = 1;
      }
    }

    return monthlyOrders;
  }

  void _setUpGraph(List<OrderModel> orders) {
    final monthlyOrders = _groupOrdersByMonth(orders);
    months = monthlyOrders.keys.toList();
    counts = monthlyOrders.values.toList();
  }
}
