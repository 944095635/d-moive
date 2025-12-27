import 'package:d_moive/models/moive.dart';
import 'package:d_moive/pages/info/info_page.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController {
  final List<Moive> tops = [
    Moive(
      name: "阿凡达：火与烬",
      ename: "Avatar：Fire and Ash",
      image: "assets/images/moives/avatar3.jpg",
      number: "8.5"
    ),

    Moive(
      name: "异形：夺命舰",
      ename: "Alien: Romulus",
      image: "assets/images/moives/alien.webp",
      number: "8.0"
    ),

    Moive(
      name: "斯巴达300勇士",
      ename: "300",
      image: "assets/images/moives/300.webp",
      number: "9.0"
    ),

    Moive(
      name: "沙丘2",
      ename: "Dune: Part Two",
      image: "assets/images/moives/dune.webp",
      number: "8.2"
    ),
  ];

  final List<Moive> continues = [
    Moive(
      name: "海王2：失落的王国",
      ename: "Aquaman and the Lost Kingdom",
      image: "assets/images/moives/aquaman.webp",
      number: "7.8"
    ),

    Moive(
      name: "铁血战士：猎物",
      ename: "Prey",
      image: "assets/images/moives/prey.jpg",
      number: "8.1"
    ),

    Moive(
      name: "神奇女侠 1984",
      ename: "Wonder Woman 1984",
      image: "assets/images/moives/wonderwoman1.jpg",
      number: "7.5"
    ),

    Moive(
      name: "惊奇队长",
      ename: "Captain Marvel",
      image: "assets/images/moives/captainmarvel.jpg",
      number: "7.0"
    ),
  ];

  Moive continueBig = Moive(
    name: "泰勒·斯威夫特",
    ename: "Taylor Swift - The Final Show",
    image: "assets/images/moives/taylor.webp",
    number: "8.5"
  );

  void onTapToInfo(Moive moive) {
    Get.to(
      () => InfoPage(),
      arguments: moive,
      transition: Transition.rightToLeft,
    );
  }
}
