import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scholr/features/student/Screens/calender.dart';
import 'package:scholr/features/student/Screens/chat.dart';
import 'package:scholr/features/student/Screens/homePage.dart';
import 'package:scholr/features/student/Screens/profile.dart';
import 'package:scholr/features/student/Screens/task.dart';

class StudentBottomNavBar extends StatefulWidget {
  const StudentBottomNavBar({Key? key}) : super(key: key);

  @override
  State<StudentBottomNavBar> createState() => _StudentBottomNavBarState();
}

class _StudentBottomNavBarState extends State<StudentBottomNavBar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  // Pages list
  final List<Widget> pages = const [
    HomePage(),
    CalendarPage(),
    ChatPage(),
    TasksPage(),
    ProfilePage(),
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onNavTap(int index) {
    setState(() => _selectedIndex = index);
    _pageController.jumpToPage(index); // Change page when nav tapped
  }

  void onPageChanged(int index) {
    setState(() => _selectedIndex = index); // Change nav when swiped
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: pages,
      ),
    
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.pinned,
        snakeShape: SnakeShape.indicator, // CASE 4 style
        shape: null, // flat bar
        padding: EdgeInsets.zero,
    
        snakeViewColor: Colors.deepPurple, // small line under selected icon
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
    
        showSelectedLabels: false, // CASE 4: no labels
        showUnselectedLabels: false,
    
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
    
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gauge),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.calendar),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.fileLines),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.circleUser),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
