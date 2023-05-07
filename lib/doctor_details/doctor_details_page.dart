import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myaarogyam/auth/widget/button.dart';

class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({Key? key}) : super(key: key);

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Column(children: [
                Container(
                  height: size.height / 4,
                  width: size.width,
                  color: const Color.fromRGBO(28, 107, 164, 100),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                "assets/back.svg",
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              '  Details',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ]),
              Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  Center(
                    child: Container(
                      height: size.height / 7,
                      width: size.width / 1.2,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/dr.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Dr. Mim Akhter",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "Cardiologist in apolo hospital",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height / 8,
                        width: size.width / 4,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(28, 107, 164, 100),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text("Patients",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text(
                                "100+",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: size.height / 8,
                        width: size.width / 4,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(28, 107, 164, 100),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text("Exp.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text(
                                "10 yr",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: size.height / 8,
                        width: size.width / 4,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(28, 107, 164, 100),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text("Rating",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text(
                                "4.67",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                                child: Text("About",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black))),
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                "MBBS. Ph.D.. Fellow , International College of Surgeons. \n \n "
                                "Ex- Professor & Head of Department, Department of Neurosurgery Dhaka Medical College & Hospital",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: size.height / 10,
                      width: size.width / 1.2,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 30,
                          ),
                          Container(
                              height: size.height / 14,
                              width: size.width / 6,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(28, 107, 164, 100),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Center(
                                  child: SvgPicture.asset("assets/clock.svg"))),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "Availablity",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                "6 PM - 9 PM",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.chevron_right_outlined,
                              size: 30,
                              color: Color.fromRGBO(28, 107, 164, 100),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Submit(
                    label: 'Book Now',
                    onCountSelected: () {},
                    width: 100,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
