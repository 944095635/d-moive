import 'package:d_moive/pages/frame/frame_page.dart';
import 'package:d_moive/values/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    _init();
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Center(
        child: Text(
          "DV",
          style: TextStyle(
            fontSize: 120,
            fontFamily: Fonts.font,
          ),
        ),
      ),
    );
  }

  void _init() async {
    await Future.delayed(Duration(seconds: 2));
    Get.to(() => FramePage(), transition: Transition.zoom);
  }
}
