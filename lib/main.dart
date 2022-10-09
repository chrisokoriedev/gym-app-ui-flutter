import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/mainscreen/homepage.dart';
import 'package:plant_app_ui/registration/verification.dart';

import 'package:plant_app_ui/style.dart';

import 'walthrough.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.dark,
              scaffoldBackgroundColor: kBackgroundColor,
              primarySwatch: Colors.blue,
              fontFamily: 'roboto'),
          home: const HomePage(),
        );
      },
    );
  }
}
