import 'package:flutter/material.dart';

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
        title: const Text('Main Screen'),
      ),
      body: const MainGrid(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: NavigationBarTheme.of(context).backgroundColor,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        selectedFontSize: 16,
        onTap: (value) {
          changeIndex();
          debugPrint(currentIndex.toString());
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Anasayfa',
            icon: Icon(
              Icons.house,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profil',
            icon: Icon(Icons.person_2),
          )
        ],
      ),
    );
  }

  int changeIndex() {
    setState(() {
      currentIndex == 0 ? currentIndex += 1 : currentIndex -= 1;
    });

    return currentIndex;
  }
}
