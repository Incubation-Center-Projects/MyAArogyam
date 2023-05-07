// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myaarogyam/Report_file.dart';
import 'package:myaarogyam/accounts/screen/profile.dart';
import 'package:myaarogyam/home/screen/doctor_screen.dart';
import 'package:myaarogyam/home/screen/home_page.dart';
import 'package:myaarogyam/home/screen/schedule.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int current_index = 0;
  final PageController _pageController = PageController();

  final List<Widget> pages = [
    const HomeScreen(),
    const Schedule(),
    const Report(),
    const DoctorScreen(),
    const Profile()
  ];

  void onTapped(int index) {
    setState(
      () {
        current_index = index;
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 200), curve: Curves.easeOut);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          children: pages,
          onPageChanged: (index) {
            setState(() => current_index = index);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 20.0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16.0,
        unselectedFontSize: 12,
        currentIndex: current_index,
        onTap: onTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.blue,
            ),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.blue,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.blue,
            ),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
