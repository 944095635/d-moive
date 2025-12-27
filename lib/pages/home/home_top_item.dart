import 'package:d_moive/models/moive.dart';
import 'package:flutter/material.dart';

class HomeTopItem extends StatelessWidget {
  const HomeTopItem(
    this.moive, {
    super.key,
    required this.aspectRatio,
    this.cacheWidth = 375,
  });

  final Moive moive;

  final double aspectRatio;

  final int cacheWidth;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color(0x10FFFFFF),
                  ],
                  stops: [0, .9],
                ).createShader(bounds);
              },
              child: Image.asset(
                moive.image,
                fit: BoxFit.cover,
                cacheWidth: cacheWidth,
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  moive.ename,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  moive.name,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
