import 'package:flutter/material.dart';
import 'package:myaarogyam/Report_file.dart';
import 'package:myaarogyam/accounts/screen/personal_information.dart';
import 'package:myaarogyam/accounts/screen/profile.dart';
import 'package:myaarogyam/auth/login.dart';
import 'package:myaarogyam/bottom_nav_bar.dart';
import 'package:myaarogyam/doctor_details/doctor_details_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: signin(),
    );
  }
}
