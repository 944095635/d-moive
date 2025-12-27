import 'package:d_moive/models/moive.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController {
  final List<Moive> tops = [
    Moive(
      name: "阿凡达：火与烬",
      ename: "Avatar：Fire and Ash",
      image: "assets/images/moives/avatar3.jpg",
    ),

    Moive(
      name: "异形：夺命舰",
      ename: "Alien: Romulus",
      image: "assets/images/moives/alien.webp",
    ),

    Moive(
      name: "斯巴达300勇士",
      ename: "300",
      image: "assets/images/moives/300.webp",
    ),

    Moive(
      name: "沙丘2",
      ename: "Dune: Part Two",
      image: "assets/images/moives/dune.webp",
    ),
  ];

  final List<Moive> continues = [
    Moive(
      name: "海王2：失落的王国",
      ename: "Aquaman and the Lost Kingdom",
      image: "assets/images/moives/aquaman.webp",
    ),

    Moive(
      name: "铁血战士：猎物",
      ename: "Prey",
      image: "assets/images/moives/prey.jpg",
    ),

    Moive(
      name: "神奇女侠 1984",
      ename: "Wonder Woman 1984",
      image: "assets/images/moives/wonderwoman1.jpg",
    ),

    Moive(
      name: "惊奇队长",
      ename: "Captain Marvel",
      image: "assets/images/moives/captainmarvel.jpg",
    ),
  ];

  Moive continueBig = Moive(
    name: "泰勒·斯威夫特",
    ename: "Taylor Swift - The Eras Tour - The Final Show",
    image: "assets/images/moives/taylor.webp",
  );
}
