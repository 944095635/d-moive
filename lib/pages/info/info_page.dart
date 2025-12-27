import 'package:d_moive/models/moive.dart';
import 'package:d_moive/pages/play/play_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled/size_extension.dart';
import 'package:get/get.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Moive moive = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Color(0x10FFFFFF),
                ],
                stops: [0, .5],
              ).createShader(bounds);
            },
            child: Image.asset(
              moive.image,
              cacheWidth: 700,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),

          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            physics: AlwaysScrollableScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  200.verticalSpace,
                  Text(
                    moive.ename,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        moive.name,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white60,
                        ),
                      ),

                      20.horizontalSpace,

                      Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                      ),
                      10.horizontalSpace,
                      Text(
                        moive.number,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),

                  20.verticalSpace,

                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => PlayPage(), arguments: moive);
                    },
                    child: Row(
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.play_circle),
                        Text("播放"),
                      ],
                    ),
                  ),

                  20.verticalSpace,

                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            moive.image,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
