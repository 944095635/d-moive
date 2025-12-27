import 'package:flutter/material.dart';

/// 页面内标题
class BodyTitle extends StatelessWidget {
  const BodyTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
