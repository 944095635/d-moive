import 'package:d_moive/models/moive.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem(
    this.moive, {
    super.key,
    this.cacheWidth = 375,
    required this.onTap,
    required this.aspectRatio,
  });

  final Moive moive;

  final double aspectRatio;

  final int cacheWidth;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AspectRatio(
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
      ),
    );
  }
}
