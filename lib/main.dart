import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/Screens/MainScreen.dart';

import 'constant/Obxdark.dart';

void main() => runApp(GetMaterialApp(
      home: MyScreen(),
      debugShowCheckedModeBanner: false,
      translations: Message(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('id', 'ID'),
    ));
