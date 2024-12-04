import 'package:fk_task/core/services/di/di.dart';
import 'package:fk_task/features/orders/data/repos/orders_repo.dart';
import 'package:fk_task/features/orders/presentation/controllers/orders_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ControllersHelper {
  static List<SingleChildWidget> controllers = [
    ChangeNotifierProvider.value(
      value: OrdersController(
        getIt.get<OrdersRepo>()
      ),
    )
  ];
}
