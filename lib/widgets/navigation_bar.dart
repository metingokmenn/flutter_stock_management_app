// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  CustomNavigationBar(
      {super.key,
      required this.backgroundColor,
      required this.selectedIconTheme,
      required this.selectedFontSize});

  Color? backgroundColor;
  IconThemeData? selectedIconTheme;
  double? selectedFontSize;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: widget.backgroundColor,
      selectedIconTheme: widget.selectedIconTheme,
      selectedFontSize: widget.selectedFontSize!,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
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
    );
  }
}
