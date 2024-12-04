import 'package:fk_task/core/services/api/api_service.dart';
import 'package:fk_task/core/services/cache/hive_service.dart';
import 'package:fk_task/features/orders/data/repos/orders_repo.dart';
import 'package:fk_task/features/orders/data/repos/orders_repo_impl.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

setUp() {
  getIt.registerLazySingleton<HiveService>(
    () => HiveService(),
  );

  getIt.registerLazySingleton<ApiService>(
    () => ApiService(
      getIt.get<HiveService>(),
    ),
  );
  getIt.registerLazySingleton<OrdersRepo>(
    () => OrdersRepoImpl(),
  );
}
