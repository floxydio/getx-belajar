import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/constant/constant_color.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _state = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hay Dio Rovelino 👏'),
                    FlatButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 30,
                          ),
                          Text('Your Cart')
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
