import 'package:flutter/material.dart';
import 'package:myaarogyam/accounts/screen/personal_information.dart';

import 'package:myaarogyam/accounts/screen/profile.dart';
import 'package:myaarogyam/auth/login.dart';
import 'package:myaarogyam/bottom_nav_bar.dart';
import 'package:myaarogyam/home/screen/home_page.dart';
import 'package:myaarogyam/home/screen/schedule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/nav',
      routes: {
        '/': (context) => const SignIn(),
        '/nav': (context) => const BottomNavBar(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const Profile(),
        '/schedule': (context) => const Schedule(),
        '/personal': (context) => const PersonalDetails(),
      },
    );
  }
}
