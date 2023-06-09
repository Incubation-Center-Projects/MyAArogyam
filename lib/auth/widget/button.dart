import 'package:flutter/material.dart';

class Submit extends StatelessWidget {
  const Submit(
      {Key? key,
      required this.label,
      required this.width,
      required this.onCountSelected})
      : super(key: key);
  final String label;
  final double width;
  final VoidCallback onCountSelected;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, bottom: 10),
      child: MaterialButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0))),
          color: const Color.fromRGBO(28, 107, 164, 20),
          highlightColor: Colors.white,
          splashColor: Colors.deepPurpleAccent,
          child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height / 50,
                horizontal: width,
              ),
              child: Text(
                label,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
          onPressed: () {
            onCountSelected();
          }),
    );
  }
}
