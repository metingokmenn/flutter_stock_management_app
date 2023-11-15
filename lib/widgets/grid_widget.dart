import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/constants/app_constants.dart';
import 'package:gokfen_stock_app/widgets/grid_item_widget.dart';

class MainGrid extends StatelessWidget {
  const MainGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 80,
      physics: const ScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (context, index) {
        return Padding(
            padding: AppConsts.appPadding16(), child: const GridItem());
      },
    );
  }
}
