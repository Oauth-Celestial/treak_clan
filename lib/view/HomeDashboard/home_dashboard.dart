import 'package:flutter/material.dart';
import 'package:treak_clan/view/HomeDashboard/Pages/home_page.dart';
import 'package:treak_clan/view/HomeDashboard/Pages/settings_page.dart';

class HomeDashBoard extends StatefulWidget {
  const HomeDashBoard({super.key});

  @override
  State<HomeDashBoard> createState() => _HomeDashBoardState();
}

class _HomeDashBoardState extends State<HomeDashBoard> {
  List<Widget> pages = [const HomePage(), const SettingsPage()];
  int currentIndex = 0;
  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onItemTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
          ]),
      body: pages[currentIndex],
    );
  }
}
