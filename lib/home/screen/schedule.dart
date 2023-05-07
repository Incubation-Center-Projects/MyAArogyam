import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
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
                    const Text(
                      "Schedule",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.93,
                margin: const EdgeInsets.only(top: 30),
                child: DatePicker(
                  DateTime.now(),
                  height: 100,
                  width: 80,
                  deactivatedColor: const Color.fromRGBO(220, 237, 249, 20),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: const Color.fromRGBO(28, 107, 164, 20),
                  dateTextStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '12:00 PM   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.93,
                    decoration: BoxDecoration(
                        color: const Color(
                          0xFF1C6BA4,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: ListTile(
                        leading: const CircleAvatar(
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
                                children: const [
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
                            const SizedBox(height: 5),
                            const Text(
                              'Dr Zim Akhter',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Cardiologist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white54,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                        trailing: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '12:00 PM   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * 0.18,
                    width: MediaQuery.of(context).size.width * 0.93,
                    decoration: BoxDecoration(
                        color: const Color(
                          0xFF1C6BA4,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: ListTile(
                        leading: const CircleAvatar(
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
                                children: const [
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
                            const SizedBox(height: 5),
                            const Text(
                              'Dr Zim Akhter',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Cardiologist',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white54,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                        trailing: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '12:00 PM   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.93,
                        decoration: BoxDecoration(
                            color: const Color(
                              0xFF1C6BA4,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: ListTile(
                            leading: const CircleAvatar(
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
                                    children: const [
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
                                const SizedBox(height: 5),
                                const Text(
                                  'Dr Zim Akhter',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Cardiologist',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white54,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            trailing: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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
