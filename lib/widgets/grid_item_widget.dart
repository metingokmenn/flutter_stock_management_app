import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  GridItem({super.key, required this.textString});
  String textString;
  @override
  Widget build(BuildContext context) {
    bool availability = true;
    return GridTile(
      footer: Icon(
        availability ? Icons.circle : Icons.circle_outlined,
        color: Colors.greenAccent,
      ),
      child:  Text(
        textString,
        textAlign: TextAlign.center,
      ),
    );
  }
}
