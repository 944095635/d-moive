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
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.amber,
            systemNavigationBarColor: Colors.transparent,
          ),
        ),
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Color(0x00000000),
          type: BottomNavigationBarType.fixed,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const SplashPage(),
    );
  }
}
