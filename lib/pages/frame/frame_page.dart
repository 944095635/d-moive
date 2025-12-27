import 'package:d_moive/pages/home/home_page.dart';
import 'package:d_moive/widgets/blur_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// 框架页面
class FramePage extends StatefulWidget {
  const FramePage({super.key});

  @override
  State<FramePage> createState() => _FramePageState();
}

class _FramePageState extends State<FramePage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _pageIndex,
        children: [
          const HomePage(),
          Text("a"),
          Text("a"),
          Text("a"),
        ],
      ),
      bottomNavigationBar: BlurWidget(
        child: BottomNavigationBar(
          onTap: (index) {
            _pageIndex = index;
            setState(() {});
          },
          currentIndex: _pageIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/home_active.svg",
              ),
              icon: SvgPicture.asset("assets/svgs/home.svg"),
              label: "CHAT",
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/home_active.svg",
              ),
              icon: SvgPicture.asset("assets/svgs/home.svg"),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/home_active.svg",
              ),
              icon: SvgPicture.asset("assets/svgs/home.svg"),
              label: "SETTING",
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/svgs/home_active.svg",
              ),
              icon: SvgPicture.asset("assets/svgs/home.svg"),
              label: "SETTING",
            ),
          ],
        ),
      ),
    );
  }
}
