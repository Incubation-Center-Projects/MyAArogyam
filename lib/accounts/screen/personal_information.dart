import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Personal_Details extends StatefulWidget {
  const Personal_Details({Key? key}) : super(key: key);

  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}

class _Personal_DetailsState extends State<Personal_Details> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final user = Provider.of<UserProvider>(context).user;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height/4,
                width: size.width,
                color: Colors.amber,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(children: [
                        SvgPicture.asset("assets/back.svg"),
                        SizedBox(width: 30,),
                        Text('Personal Details' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold , fontSize: 17),),
                      ],),
                    ),
                    Center(
                      child: CircleAvatar(
                        foregroundColor: Colors.white,
                        radius: 50,
                        backgroundImage: AssetImage("assets/jpeg/register.jpeg"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 7, bottom: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Personal Information",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height / 12,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Name : ",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  //user.name,
                                  "Ayush Sahu",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 70,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height / 12,
                          width: size.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Age : ",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: size.height / 12,
                          width: size.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Gender : ",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      //user.gender,
                                      "Male",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 70,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height / 12,
                          width: size.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Mobile No.: ",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      //user.phone.toString(),
                                      "9171631763",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: size.height / 12,
                          width: size.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Date of Birth : ",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      //user.dob,
                                      "03/06/2003",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 70,
                    ),
                    Container(
                      height: size.height / 12,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Address : ",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  //user.address.toString(),
                                  "Bhopal",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height / 70,
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height / 12,
                          width: size.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Occupation : ",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      //user.occupation,
                                      "Students",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: size.height / 12,
                          width: size.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Qualification : ",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "user.qualification",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
