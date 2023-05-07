// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Report",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.more_horiz,
                        size: 20,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: size.height / 5,
                    width: size.width / 1.1,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(220, 237, 249, 100),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Heart Rate",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: const [
                                Text(
                                  "96",
                                  style: TextStyle(fontSize: 45),
                                ),
                                Text(
                                  "bpm",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            const Spacer()
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset("assets/bp.svg")
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: size.height / 5,
                      width: size.width / 2.3,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 225, 233, 100),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Spacer(),
                              SvgPicture.asset("assets/blood.svg"),
                              const Spacer(),
                              const Text("   Blood Group",
                                  style: TextStyle(fontSize: 14)),
                              const Spacer(),
                              const Text(
                                "A+",
                                style: TextStyle(fontSize: 37),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.more_horiz),
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: size.height / 5,
                      width: size.width / 2.3,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(250, 243, 216, 100),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Spacer(),
                              SvgPicture.asset("assets/weight.svg"),
                              const Spacer(),
                              const Text("   Weight", style: TextStyle(fontSize: 14)),
                              const Spacer(),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "86",
                                    style: TextStyle(fontSize: 45),
                                  ),
                                  Text(
                                    "kg",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.more_horiz),
                              ),
                              Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer()
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: const [
                      Expanded(
                          child: Text(
                        "Latest Report",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: size.height / 8,
                    width: size.width / 1.1,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height / 11,
                            width: size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent.shade100,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Spacer(),
                              Text(
                                "General Health",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "8 files",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: size.height / 8,
                    width: size.width / 1.1,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0, // soften the shadow
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: size.height / 11,
                            width: size.width / 5,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent.shade100,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Spacer(),
                              Text(
                                "Moral Health",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "8 files",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
