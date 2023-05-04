import 'package:flutter/material.dart';
import 'package:myaarogyam/auth/widget/button.dart';
import 'package:myaarogyam/auth/widget/mytext_field.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  // @override
  // Widget build(BuildContext context) {
  //
  //   final size = MediaQuery.of(context).size;
  //   return SafeArea(
  //     child: Scaffold(
  //       body: SingleChildScrollView(
  //         scrollDirection: Axis.vertical,
  //         child: Container(
  //           height: size.height,
  //           color: Color.fromRGBO(28, 107, 164, 20),
  //           child: Stack(
  //             children: [
  //               Column(
  //                 children: [
  //
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final phoneController = TextEditingController();
    bool isRememberMe = false;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: size.height,
            color: Color.fromRGBO(221, 213, 224, 100),
            child: Stack(
              children: [
                Container(
                    height: size.height / 3,
                    width: size.width,
                    child: Image.asset(
                      "assets/bg.png",
                      fit: BoxFit.cover,
                    )),
                Column(
                  children: [
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Center(
                        child: Image.asset(
                          "assets/logo.png",
                          height: size.height / 5,
                        )),
                    Container(
                      height: size.height / 1.7,
                      width: size.width / 1.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height / 90,
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 20.0 , right: 20, bottom: 20),
                              child: MyTextField(
                                myController: phoneController,
                                fieldName: 'Enter Mobile No.',
                                myIcon: Icons.call_outlined,
                                prefixIconColor:
                                Color.fromRGBO(113, 40, 201, 80),
                                keyboard: TextInputType.text,
                                maxlines: 1,
                                onSaved: (value) {},
                              ),
                            ),
                            submit(label: "Send Me OTP",width: size.width/12, onCountSelected:(){}),
                            Row(
                              children: [
                                Spacer(),
                                Theme(
                                    child: Checkbox(
                                        value: isRememberMe,
                                        activeColor: Colors.deepPurple,
                                        onChanged: (value) {
                                          setState(() {
                                            isRememberMe = !isRememberMe;
                                          });
                                        }),
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                      Color.fromRGBO(113, 40, 201, 80),
                                    )),
                                Text("Get important updates on whatsapp",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    )),
                                Spacer()
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height / 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.deepPurpleAccent,
                                            Colors.deepPurple,
                                          ],
                                          begin:
                                          const FractionalOffset(0.0, 0.0),
                                          end: const FractionalOffset(1.0, 1.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                    width: size.width / 4,
                                    height: 1.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Text(
                                      "Or",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(113, 40, 201, 80),
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.deepPurple,
                                            Color.fromRGBO(113, 40, 201, 80),
                                          ],
                                          begin:
                                          const FractionalOffset(0.0, 0.0),
                                          end: const FractionalOffset(1.0, 1.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                    width: size.width / 4,
                                    height: 1.0,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7.0))),
                                  side: BorderSide(width: 2.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 20, bottom: 5, top: 5),
                                  child: Text(
                                    'Continue with Guest',
                                    style: TextStyle(
                                        color: Color.fromRGBO(113, 40, 201, 80), fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text("Login using",
                                  style: TextStyle(fontSize: 10)),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Center(
                                child: Image.asset("assets/whatsapp.png", height: size.height/10,),
                              ),
                            ),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
