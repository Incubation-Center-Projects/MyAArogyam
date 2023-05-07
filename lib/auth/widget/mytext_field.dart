import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, required this.myController, required this.fieldName, this.myIcon = Icons.verified_user_outlined, this.prefixIconColor = Colors.blueAccent,required this.keyboard, this.maxlines, required this.onSaved}) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  final TextInputType keyboard;
  // ignore: prefer_typing_uninitialized_variables
  final maxlines;
  final ValueChanged<String?>? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: const TextStyle(fontSize: 12),
        maxLines: maxlines,
        keyboardType: keyboard,
        validator: (value){
          if(value == null || value.isEmpty){
            return 'Please enter some text';
          }
          
          return null;
        },
        controller: myController,
        decoration: InputDecoration(
            labelText: fieldName,
            prefixIcon: Icon(myIcon, color: prefixIconColor,),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(28, 107, 164, 20),)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(width: 3,color: Color.fromRGBO(28, 107, 164, 20),)
            ),
            labelStyle: const TextStyle(color: Color.fromRGBO(28, 107, 164, 20),)
        ),
        onSaved: onSaved,
      ),
    );
  }
}
