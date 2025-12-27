import 'package:d_moive/themes/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 页面内标题
class BodyTitle extends StatelessWidget {
  const BodyTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.pageAllPadding,
      child: Row(
        spacing: 4,
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            CupertinoIcons.forward,
            size: 15,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
