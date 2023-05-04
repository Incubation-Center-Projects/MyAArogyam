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
      body:Column(
        children: [
          Text("Schedule", style: TextStyle( fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.grey),),
          Container(
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
                color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
  }
}
