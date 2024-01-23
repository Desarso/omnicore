import 'package:flutter/material.dart';

class CoreTemplate extends StatefulWidget {
  const CoreTemplate({super.key});

  @override
  _CoreTemplateState createState() => _CoreTemplateState();
}

class _CoreTemplateState extends State<CoreTemplate> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 53, 69),
      body: const Text('CoreTemplate'),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromARGB(255, 22, 153, 98),
          unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SizedBox(width: 40, height: 40, child: Icon(Icons.home)),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(width: 40, height: 40, child: Icon(Icons.home)),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(width: 40, height: 40, child: Icon(Icons.home)),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(width: 40, height: 40, child: Icon(Icons.home)),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(width: 40, height: 40, child: Icon(Icons.home)),
                label: ''),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
