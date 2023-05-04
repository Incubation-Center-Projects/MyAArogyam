import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class schedule extends StatefulWidget {
  const schedule({Key? key}) : super(key: key);

  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, bottom: 0.0, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Schedule",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.93,
                margin: EdgeInsets.only(top: 30),
                child: DatePicker(
                  DateTime.now(),
                  height: 100,
                  width: 80,
                  deactivatedColor: Color.fromRGBO(220, 237, 249, 20),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Color.fromRGBO(28, 107, 164, 20),
                  dateTextStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            '12:00 PM   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.93,
                      decoration: BoxDecoration(
                          color: Color(
                            0xFF1C6BA4,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/dr.png'),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15.0, right: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '12: 30 PM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Dr Zim Akhter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Cardiologist',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white54,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                          trailing: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            '12:00 PM   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.93,
                      decoration: BoxDecoration(
                          color: Color(
                            0xFF1C6BA4,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/dr.png'),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15.0, right: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '12: 30 PM',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Dr Zim Akhter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Cardiologist',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white54,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                          trailing: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Text(
                                  '12:00 PM   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            height: MediaQuery.of(context).size.height * 0.18,
                            width: MediaQuery.of(context).size.width * 0.93,
                            decoration: BoxDecoration(
                                color: Color(
                                  0xFF1C6BA4,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/dr.png'),
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, right: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            '12: 30 PM',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Dr Zim Akhter',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Cardiologist',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white54,
                                          letterSpacing: 1),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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
