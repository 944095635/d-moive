import 'package:d_moive/models/moive.dart';
import 'package:flutter/material.dart';

class HomeTopItem extends StatelessWidget {
  const HomeTopItem(this.moive, {super.key});

  final Moive moive;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Center(child: Image.asset(moive.image)),
    );
  }
}
