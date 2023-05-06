import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myaarogyam/Report_file.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Hero(
                          tag: "user",
                          child: GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, "/profile"),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.13,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.transparent,
                                image: DecorationImage(
                                  image: AssetImage('assets/demo_phonto.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '👋 Hello!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            'Shahin Alam',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(
                  MediaQuery.of(context).size.height * 0.07,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(246, 216, 216, 100)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Image.asset(
                            'assets/Vector.png',
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          hintText: 'Search medical ....',
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: size.height / 5,
                width: size.width / 1.1,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(246, 243, 216, 100),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Get the Best \nMedical Service',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            'Leave the best of the master \nof the classs in the one',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/maindoc.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.fitHeight,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Services',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height / 10,
                        width: size.width / 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(220, 237, 249, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/telemedicine.svg",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'TeleMedicine',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height / 10,
                        width: size.width / 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 240, 219, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child:
                            Center(child: SvgPicture.asset("assets/pills.svg")),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Medicine',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Report(),
                          ),
                        ),
                        child: Container(
                          height: size.height / 10,
                          width: size.width / 5,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(214, 246, 255, 100),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Center(
                              child: SvgPicture.asset("assets/report.svg")),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Report',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: size.height / 10,
                        width: size.width / 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 227, 233, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                            child: SvgPicture.asset("assets/corona.svg")),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Corona',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Appointments',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: size.height / 7,
                      width: size.width / 1.5,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1C6BA4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(242, 227, 233, 100),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.015,
                                ),
                                Text(
                                  '12',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Text(
                                  'Tue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '09:30 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                'Dr. Mim Akhter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                'Depression',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: size.height / 7,
                      width: size.width / 1.5,
                      decoration: const BoxDecoration(
                        color: Color(0x7BE0A01F),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0A01F),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.015,
                                ),
                                Text(
                                  '12',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Text(
                                  'Tue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '09:30 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                'Dr. Mim Akhter',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                'Depression',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
