import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/constants/app_constants.dart';
import 'package:gokfen_stock_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppConsts.mainColor(),
          appBarTheme: AppBarTheme(
              backgroundColor: AppConsts.mainColor(),
              titleTextStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          useMaterial3: true,
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: AppConsts.mainColor(),
          )),
      home: const MainScreen(),
    );
  }
}
