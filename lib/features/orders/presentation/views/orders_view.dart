import 'package:fk_task/core/extensions/size_extension.dart';
import 'package:fk_task/core/utils/app_padding.dart';
import 'package:fk_task/features/orders/presentation/controllers/orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(AppPadding.s16),
      child: Consumer<OrdersController>(builder: (_, provider, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Metrics',
              style: theme.textTheme.displayLarge,
            ),
            4.verticalSpace,
            Text(
              'Total Orders: ${provider.totalCount}',
              style: theme.textTheme.bodyLarge,
            ),
            2.verticalSpace,
            Text(
              'Average Price: \$${provider.averagePrice}',
              style: theme.textTheme.displayMedium,
            ),
            2.verticalSpace,
            Text(
              'Number of Returns: ${provider.returnsCount}',
              style: theme.textTheme.bodySmall,
            ),
          ],
        );
      }),
    );
  }
}
