import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/widgets/navigation_bar.dart';

import 'package:gokfen_stock_app/widgets/grid_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Anasayfa',
        ),
      ),
      body: MainGrid(),
      bottomNavigationBar: CustomNavigationBar(
        backgroundColor: NavigationBarTheme.of(context).backgroundColor,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedFontSize: 16,
      ),
    );
  }
}
