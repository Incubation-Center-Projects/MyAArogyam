import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myaarogyam/accounts/screen/personal_information.dart';
import 'package:myaarogyam/accounts/screen/profile.dart';
import 'package:myaarogyam/doctor_details/doctor_details_page.dart';
import 'package:myaarogyam/home/screen/home_page.dart';
import 'package:myaarogyam/home/screen/schedule.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int current_index = 0;

  final List<Widget> pages = [
    const Home_Screen(),
    const schedule(),
    const doctor_page_detials(),
    const Personal_Details(),
    const Profile()
  ];

  void OnTapped(int index) {
    setState(
      () {
        current_index = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 20.0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16.0,
        unselectedFontSize: 12,
        currentIndex: current_index,
        onTap: OnTapped,
        items: <BottomNavigationBarItem>[
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
