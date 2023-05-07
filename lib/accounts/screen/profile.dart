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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 107, 164, 20),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset("assets/back.svg")),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Hero(
                tag: "user",
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.1),
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/profile.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shahin Alam",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Ui Designer",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    color: Colors.white,
                    highlightColor: Colors.white,
                    splashColor: Colors.blueAccent,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height / 40),
                        child: Row(
                          children: const [
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
                    onPressed: () {
                      Navigator.pushNamed(context, '/personal');
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    color: Colors.white,
                    highlightColor: Colors.white,
                    splashColor: Colors.blueAccent,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height / 40),
                        child: Row(
                          children: const [
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
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    color: Colors.white,
                    highlightColor: Colors.white,
                    splashColor: Colors.blueAccent,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height / 40),
                        child: Row(
                          children: const [
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
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    color: Colors.white,
                    highlightColor: Colors.white,
                    splashColor: Colors.blueAccent,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height / 40),
                        child: Row(
                          children: const [
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
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7.0),
                      ),
                    ),
                    highlightColor: Colors.white,
                    splashColor: Colors.blueAccent,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height / 40),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.logout,
                              color: Color(0xffBECADA),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Log Out",
                              style: TextStyle(
                                  color: Color(0xffBECADA),
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
      ),
    );
  }
}
