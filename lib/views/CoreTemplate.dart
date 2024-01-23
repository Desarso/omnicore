import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoreTemplate extends StatefulWidget {
  const CoreTemplate({super.key});

  @override
  _CoreTemplateState createState() => _CoreTemplateState();
}

class _CoreTemplateState extends State<CoreTemplate> {
  int selectedIndex = 0;
  final screens = [
    const Text("Home Page",
        style: TextStyle(color: Color.fromARGB(255, 255, 244, 142))),
    const Text("Stats Page",
        style: TextStyle(color: Color.fromARGB(255, 255, 244, 142))),
    const Text("Picture Page",
        style: TextStyle(color: Color.fromARGB(255, 255, 244, 142))),
    const Text("Profile Page",
        style: TextStyle(color: Color.fromARGB(255, 255, 244, 142))),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 53, 69),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 80,
            child: Center(child: screens[selectedIndex]),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: const Color(0xff00454A),
          selectedItemColor: const Color(0xffF0E262),
          unselectedItemColor: const Color(0xffED6363),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/home-default.svg")),
                label: '',
                activeIcon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/home-selected.svg"))),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/stats-default.svg")),
                label: '',
                activeIcon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/stats-selected.svg"))),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/picture-default.svg")),
                label: '',
                activeIcon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/picture-selected.svg"))),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/profile-default.svg")),
                label: '',
                activeIcon: SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset("assets/profile-selected.svg"))),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
