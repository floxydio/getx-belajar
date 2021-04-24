import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Get Back')),
          ),
        ),
      ),
    );
  }
}
