import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/constants/app_constants.dart';
import 'package:gokfen_stock_app/models/stock_item_model.dart';
import 'package:gokfen_stock_app/service/product_service.dart';
import 'package:gokfen_stock_app/widgets/grid_item_widget.dart';

class MainGrid extends StatefulWidget {
  const MainGrid({super.key});

  @override
  State<MainGrid> createState() => _MainGridState();
}

class _MainGridState extends State<MainGrid> {
  late Future<List<StockItem>> itemsFuture;

  @override
  void initState() {
    itemsFuture = ProductService().getAllItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: itemsFuture,
      builder: (context, snapshot) {
        debugPrint(snapshot.hasData.toString());
        return snapshot.hasData
            ? GridView.builder(
                physics: const ScrollPhysics(),
                itemCount: snapshot.data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return GridItem(
                    textString: snapshot.data![index].marka!,
                  );
                },
              )
            : const Center(child: Text("No Data Found !"));
      },
    );
  }
}
