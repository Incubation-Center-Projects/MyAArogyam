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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
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
                        Container(
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
                height: 10,
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50),
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
                          hintText: 'Search medical ....',
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
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
                      "assets/demo_phonto.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
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
                height: 30,
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
                              child:
                                  SvgPicture.asset("assets/telemedicine.svg"))),
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
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 111, 179, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: size.height / 7,
                        width: size.width / 1.5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 111, 179, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: size.height / 7,
                        width: size.width / 1.5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 111, 179, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: size.height / 7,
                        width: size.width / 1.5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 111, 179, 100),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
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
