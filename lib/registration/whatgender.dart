import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/registration/add_age.dart';
import 'package:plant_app_ui/style.dart';
import 'package:plant_app_ui/widgets.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int choosedGender = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: kDefaultPadding,
          child: Center(
            child: Column(
              children: [
                sizedHeight(40),
                registrationHeader('Tell us about yourself!',
                    'To give you a better experience we need\n to know your gender'),
                sizedHeight(40),
                chooseGender(Icons.male, 'Male', 1),
                sizedHeight(20),
                chooseGender(Icons.female, 'Female', 2),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    nextButton(
                      'Next',
                      (() => Get.to(const AddAgeScreen())),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }

  chooseGender(IconData iconData, String gender, int index) {
    return GestureDetector(
      onTap: () => setState(
        () => choosedGender = index,
      ),
      child: Container(
        padding: EdgeInsets.all(25.sp),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: (choosedGender == index) ? kPrimaryColor : kDarkBgColor),
        child: Column(
          children: [
            Icon(
              iconData,
              size: 60.sp,
            ),
            Text(
              gender,
              style: TextStyle(fontSize: 20.sp),
            )
          ],
        ),
      ),
    );
  }
}
