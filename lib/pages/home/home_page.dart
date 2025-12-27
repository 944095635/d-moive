import 'package:d_moive/models/moive.dart';
import 'package:d_moive/pages/home/home_logic.dart';
import 'package:d_moive/pages/home/home_item.dart';
import 'package:d_moive/themes/dimensions.dart';
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
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          bottom: false,
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BodyTitle("热门"),
                _buildTopList(),

                BodyTitle("正在播放"),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.pagePadding,
                  ),
                  child: HomeItem(
                    controller.continueBig,
                    cacheWidth: 650,
                    aspectRatio: 16 / 9,
                    onTap: () {
                      controller.onTapToInfo(controller.continueBig);
                    },
                  ),
                ),

                BodyTitle("最新"),
              ],
            ),
          ),
        ),

        SliverSafeArea(
          top: false,
          sliver: SliverPadding(
            padding: EdgeInsets.only(
              left: Dimensions.pagePadding,
              right: Dimensions.pagePadding,
              bottom: Dimensions.pagePadding,
            ),
            sliver: _buildContinueList(),
          ),
        ),
      ],
    );
  }

  Widget _buildTopList() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.pagePadding,
        ),
        itemCount: controller.tops.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Moive moive = controller.tops[index];
          return HomeItem(
            moive,
            aspectRatio: 0.64,
            onTap: () {
              controller.onTapToInfo(moive);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return 10.horizontalSpace;
        },
      ),
    );
  }

  Widget _buildContinueList() {
    return SliverGrid.builder(
      itemCount: controller.continues.length,
      itemBuilder: (context, index) {
        Moive moive = controller.continues[index];
        return HomeItem(
          moive,
          cacheWidth: 420,
          aspectRatio: 5 / 7,
          onTap: () {
            controller.onTapToInfo(moive);
          },
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 16,
        childAspectRatio: 5 / 7,
      ),
    );
  }
}
