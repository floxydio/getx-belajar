import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/Screens/Dashboard_Screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _login() async {
    Get.to(Dashboard());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Login Your Account',
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        FormEmail(),
                        SizedBox(
                          height: 20,
                        ),
                        FormPassword(),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Dont Have Account ? Sign Up',
                          style:
                              TextStyle(color: Colors.grey, letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.8,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red[400]),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _login();
                              }
                            },
                            child: Text('Login'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FormPassword extends StatelessWidget {
  const FormPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.8,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Password Kosong..";
          } else {
            return null;
          }
        },
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password', contentPadding: EdgeInsets.all(10.0)),
      ),
    );
  }
}

class FormEmail extends StatelessWidget {
  const FormEmail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.8,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Username Kosong";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            hintText: 'Username', contentPadding: EdgeInsets.all(10.0)),
      ),
    );
  }
}
