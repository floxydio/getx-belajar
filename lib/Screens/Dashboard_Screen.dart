import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            change = !change;
          });
          change
              ? Get.changeTheme(ThemeData.light())
              : Get.changeTheme(ThemeData.dark());
        },
        child: change ? Text('Dark') : Text('Light'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hay Dio Rovelino 👏',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      FlatButton(
                        onPressed: () {
                          Get.defaultDialog(
                              title: 'Your Cart 0',
                              middleText: 'No one Data in Here ! Go BACK',
                              onCancel: () {});
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              size: 30,
                            ),
                            Text('Your Cart'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InputBuy(),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20.0),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Categories',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text('See all')
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundedBTN(
                                icon: Icons.person,
                              ),
                              RoundedBTN(
                                icon: Icons.computer,
                              ),
                              RoundedBTN(
                                icon: Icons.tv_sharp,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Sneakers From You',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 40,
                ),
                GridView.count(
                  primary: false,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  crossAxisCount: 2,
                  children: [
                    CardShoes(
                      text: 'Rp250.000',
                    ),
                    CardShoes(text: 'Rp140.000'),
                    CardShoes(text: 'Rp370.000'),
                    CardShoes(text: 'Rp330.000'),
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

class RoundedBTN extends StatelessWidget {
  final IconData icon;
  const RoundedBTN({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.blue, // button color
        child: InkWell(
          splashColor: Colors.red, // inkwell color
          child: SizedBox(
              width: 56,
              height: 56,
              child: Icon(
                icon,
                color: Colors.white,
              )),
          onTap: () {},
        ),
      ),
    );
  }
}

class InputBuy extends StatelessWidget {
  const InputBuy({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
            ),
            prefixIcon: Icon(Icons.search),
            hintText: 'I Want to buy...'),
      ),
    );
  }
}

class CardShoes extends StatelessWidget {
  final String text;
  const CardShoes({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey[300])),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          new Image.asset(
            'image/sepatu.png',
            width: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox.fromSize(
                    size: Size(40, 40),
                    child: ClipOval(
                      child: Material(
                        // button color
                        child: InkWell(
                          splashColor: Colors.green, // splash color
                          onTap: () {
                            Get.snackbar(
                                'You Added This To Cart', 'Hello From Admin');
                          }, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.shopping_cart), // text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
