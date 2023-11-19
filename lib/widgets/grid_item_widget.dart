import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    bool availability = true;
    return GridTile(
      footer: Icon(
        availability ? Icons.circle : Icons.circle_outlined,
        color: Colors.greenAccent,
      ),
      child: const Text(
        "Tryout",
        textAlign: TextAlign.center,
      ),
    );
  }
}
