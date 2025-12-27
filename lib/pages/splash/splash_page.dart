import 'package:d_moive/pages/frame/frame_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    _init();
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Center(
        child: SvgPicture.asset(
          "assets/svgs/logo.svg",
          width: 240,
        ),
      ),
    );
  }

  void _init() async {
    await Future.delayed(Duration(seconds: 3));
    Get.to(() => FramePage(), transition: Transition.zoom);
  }
}
