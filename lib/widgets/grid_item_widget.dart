import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/models/stock_item_model.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    StockItem item = StockItem(
        id: '1', name: 'Deneme item', quantity: 100, availability: true);
    debugPrint(item.availability.toString());
    return GridTile(
      footer: Icon(
        item.availability ? Icons.circle : Icons.circle_outlined,
        color: Colors.greenAccent,
      ),
      child: Text(
        item.name!,
        textAlign: TextAlign.center,
      ),
    );
  }
}
