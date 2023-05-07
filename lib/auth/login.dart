import 'package:flutter/material.dart';
import 'package:myaarogyam/auth/widget/button.dart';
import 'package:myaarogyam/auth/widget/mytext_field.dart';
import 'package:myaarogyam/bottom_nav_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            color: const Color.fromRGBO(221, 213, 224, 100),
            child: Stack(
              children: [
                SizedBox(
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
                      decoration: const BoxDecoration(
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
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, bottom: 20),
                              child: MyTextField(
                                myController: phoneController,
                                fieldName: 'Enter Mobile No.',
                                myIcon: Icons.call_outlined,
                                prefixIconColor:
                                    const Color.fromRGBO(113, 40, 201, 80),
                                keyboard: TextInputType.text,
                                maxlines: 1,
                                onSaved: (value) {},
                              ),
                            ),
                            Submit(
                                label: "Send Me OTP",
                                width: size.width / 12,
                                onCountSelected: () {}),
                            Row(
                              children: [
                                const Spacer(),
                                Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor:
                                          const Color.fromRGBO(113, 40, 201, 80),
                                    ),
                                    child: Checkbox(
                                        value: isRememberMe,
                                        activeColor: Colors.deepPurple,
                                        onChanged: (value) {
                                          setState(() {
                                            isRememberMe = !isRememberMe;
                                          });
                                        })),
                                const Text("Get important updates on whatsapp",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    )),
                                const Spacer()
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height / 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.deepPurpleAccent,
                                            Colors.deepPurple,
                                          ],
                                          begin:
                                              FractionalOffset(0.0, 0.0),
                                          end: FractionalOffset(1.0, 1.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                    width: size.width / 4,
                                    height: 1.0,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.0, right: 15.0),
                                    child: Text(
                                      "Or",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(113, 40, 201, 80),
                                          decoration: TextDecoration.none,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.deepPurple,
                                            Color.fromRGBO(113, 40, 201, 80),
                                          ],
                                          begin:
                                              FractionalOffset(0.0, 0.0),
                                          end: FractionalOffset(1.0, 1.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                    width: size.width / 4,
                                    height: 1.0,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavBar(),
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7.0))),
                                  side: const BorderSide(width: 2.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0, right: 20, bottom: 5, top: 5),
                                  child: Text(
                                    'Continue with Guest',
                                    style: TextStyle(
                                        color: Color.fromRGBO(113, 40, 201, 80),
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text("Login using",
                                  style: TextStyle(fontSize: 10)),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Center(
                                child: Image.asset(
                                  "assets/whatsapp.png",
                                  height: size.height / 10,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
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
