import 'package:flutter/material.dart';
import 'package:myaarogyam/auth/login.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFEEF6FC),
                          border: Border.all(color: Color(0xFFD7DEEA)),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 13,
                          color: Color.fromARGB(255, 9, 9, 9),
                        )),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Doctors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFEEF6FC,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 18,
                      ),
                      color: Color(
                        0xFF8AA0BC,
                      ),
                    ),
                    Text(
                      'Search doctor',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_alt_outlined),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Live Doctors',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/dr.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/dr.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/dr.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/dr.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                visualDensity: VisualDensity(
                  vertical: 4,
                ),
                leading: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/dr.png'),
                    ),
                  ),
                ),
                title: Text(
                  'Dr. Mim Akhter',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cardiologist in apolo hospital',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '(17 Reviews)',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                visualDensity: VisualDensity(
                  vertical: 4,
                ),
                leading: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/dr.png'),
                    ),
                  ),
                ),
                title: Text(
                  'Dr. Mim Akhter',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cardiologist in apolo hospital',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '(17 Reviews)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                visualDensity: VisualDensity(
                  vertical: 4,
                ),
                leading: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/dr.png'),
                    ),
                  ),
                ),
                title: Text(
                  'Dr. Mim Akhter',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cardiologist in apolo hospital',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '(17 Reviews)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                visualDensity: VisualDensity(
                  vertical: 4,
                ),
                leading: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/dr.png'),
                    ),
                  ),
                ),
                title: Text(
                  'Dr. Mim Akhter',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cardiologist in apolo hospital',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '(17 Reviews)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                visualDensity: VisualDensity(
                  vertical: 4,
                ),
                leading: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/dr.png'),
                    ),
                  ),
                ),
                title: Text(
                  'Dr. Mim Akhter',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cardiologist in apolo hospital',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '(17 Reviews)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ]),
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
