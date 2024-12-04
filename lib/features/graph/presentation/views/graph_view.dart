import 'package:fk_task/core/utils/app_padding.dart';
import 'package:fk_task/features/orders/presentation/controllers/orders_controller.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GraphView extends StatelessWidget {
  const GraphView({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(AppPadding.s16),
      child: Consumer<OrdersController>(
        builder: (_,provider,__) {
          return BarChart(
            BarChartData(
              barGroups: List.generate(provider.months.length, (index) {
                return BarChartGroupData(
                  x: index,
                  barRods: [
                    BarChartRodData(
                      toY: provider.counts[index].toDouble(),
                      color: Theme.of(context).primaryColor,
                      width: 16,
                    ),
                  ],
                );
              }),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                )),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      final int index = value.toInt();
                      if (index < provider.months.length) {
                        return Text(
                         provider.months[index],
                          style: Theme.of(context).textTheme.bodyMedium,
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
