import 'package:d_moive/models/moive.dart';
import 'package:d_moive/pages/home/home_logic.dart';
import 'package:d_moive/pages/home/home_top_item.dart';
import 'package:d_moive/widgets/body_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled/size_extension.dart';
import 'package:get/get.dart';

/// 主页
class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeLogic());
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      extendBodyBehindAppBar: true,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        30.verticalSpace,
        BodyTitle("Top trending moives"),
        10.verticalSpace,
        _buildTopList(),
        20.verticalSpace,
        Image.asset("assets/images/moives/avatar3.jpg"),
      ],
    );
  }

  Widget _buildTopList() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: controller.tops.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Moive moive = controller.tops[index];
          return HomeTopItem(moive);
        },
        separatorBuilder: (BuildContext context, int index) {
          return 10.horizontalSpace;
        },
      ),
    );
  }
}
