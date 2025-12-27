import 'package:d_moive/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DV',
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(),
      ),
      themeMode: ThemeMode.dark,
      home: const SplashPage(),
    );
  }
}
