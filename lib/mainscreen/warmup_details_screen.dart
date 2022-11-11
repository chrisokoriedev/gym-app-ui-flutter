import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/style.dart';
import 'package:plant_app_ui/widgets.dart';

class WarmUpScreen extends StatelessWidget {
  const WarmUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/m.jpg'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
                child: GestureDetector(
                  onTap: () => Get.back(),
                  child: CircleAvatar(
                    backgroundColor: kBackgroundColor.withOpacity(0.5.sp),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
              sizedHeight(250),
              Container(
                  width: double.infinity,
                  // height: Get.mediaQuery.size.height,
                  padding: kDefaultPadding,
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Day 01- Warm up',
                        style: TextStyle(
                            fontSize: 26.sp, fontWeight: FontWeight.w600),
                      ),
                      sizedHeight(10),
                      Text(
                        '04 Workout for Beginner',
                        style: TextStyle(fontSize: 16.sp, color: kPrimaryColor),
                      ),
                      sizedHeight(20),
                      Row(
                        children: [
                          pillComponent(Icons.play_circle, '60 min'),
                          sizedWidth(30),
                          pillComponent(Icons.line_weight, '350 Cal'),
                        ],
                      ),
                      sizedHeight(20),
                      Text(
                        "Want your body to be healthy. Join our program with direction"
                        " according to body's goals. Increasing physical strength"
                        "  is the goal of stregth training. Maintain body fitnessby "
                        "  doing physical exercise at least 2-3 times a week",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 23.sp, color: kGreyColor.shade600),
                      ),
                      sizedHeight(20),
                      otherWarmCompo(
                          'Simple Warm-up \nExercises', 'assets/g.jpg'),
                      sizedHeight(20),
                      otherWarmCompo(
                          'Simple Warm-up \nExercises', 'assets/i.jpg'),
                      sizedHeight(50),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: mediaQueryWidth * 0.7,
              height: mediaQueryHeight * 0.1 - 30,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: regularBorderRadius,
              ),
              child: Center(
                child: Text(
                  'Start Workout',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              )),
        ],
      ),
    );
  }
}
