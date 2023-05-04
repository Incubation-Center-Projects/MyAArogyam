import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final user = Provider.of<UserProvider>(context).user;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(28, 107, 164, 20),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height,
                width: size.width,
                color: Color.fromRGBO(28, 107, 164, 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.pushNamed(context, "/"),
                              child: SvgPicture.asset("assets/back.svg")),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Personal Details',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Hero(
                      tag: "user",
                      child: Center(
                        child: CircleAvatar(
                          foregroundColor: Colors.white,
                          radius: 50,
                          backgroundImage: AssetImage("assets/demo_phonto.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Shahin Alam",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Ui Designer",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0))),
                          color: Colors.white,
                          highlightColor: Colors.white,
                          splashColor: Colors.blueAccent,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height / 40),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Personal Details",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              )),
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0))),
                          color: Colors.white,
                          highlightColor: Colors.white,
                          splashColor: Colors.blueAccent,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height / 40),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.privacy_tip_outlined,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              )),
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0))),
                          color: Colors.white,
                          highlightColor: Colors.white,
                          splashColor: Colors.blueAccent,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height / 40),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.credit_card_rounded,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Complaints",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              )),
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0))),
                          color: Colors.white,
                          highlightColor: Colors.white,
                          splashColor: Colors.blueAccent,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height / 40),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Account Settings",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              )),
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0))),
                          highlightColor: Colors.white,
                          splashColor: Colors.blueAccent,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height / 40),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Log Out",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              )),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
