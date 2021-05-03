import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:learngetx/Screens/Login_Screen.dart';
import 'package:learngetx/Screens/Register_Screen.dart';
import 'package:learngetx/constant/constant_color.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  }

  int _state = 2;

  void _animateButton() {}

  void _click() {
    if (_state != 1) {
      return Get.changeTheme(ThemeData.dark());
    } else if (_state != 2) {
      return Get.changeTheme(ThemeData.light());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 60,
                ),
                SvgPicture.asset(
                  imageWelcome,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Selamat Datang 👋',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: 40,
                ),
                SecondText(),
                SizedBox(
                  height: 40,
                ),
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.red[400]),
                        onPressed: () {
                          setState(() {});
                          Timer(Duration(milliseconds: 3000), () {
                            setState(() {
                              Get.to(Login());
                            });
                          });
                        },
                        child: _state != 1
                            ? Text(
                                'Get Started',
                                style: TextStyle(fontSize: 16),
                              )
                            : SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                ),
                              )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondText extends StatelessWidget {
  const SecondText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Apakah anda mencari sesuatu yang beda ?\nKami hadir datang untuk membantu anda\nMelengkapi hari anda',
        style: TextStyle(
          fontWeight: FontWeight.w200,
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
