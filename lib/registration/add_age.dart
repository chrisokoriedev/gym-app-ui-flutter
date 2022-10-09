import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/registration/add_weight.dart';
import 'package:plant_app_ui/style.dart';

import '../widgets.dart';

class AddAgeScreen extends StatefulWidget {
  const AddAgeScreen({Key? key}) : super(key: key);

  @override
  State<AddAgeScreen> createState() => _AddAgeScreenState();
}

class _AddAgeScreenState extends State<AddAgeScreen> {
  int choosedAge = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kDefaultPadding,
        child: Center(
          child: Column(
            children: [
              sizedHeight(40),
              registrationHeader('How old are you?',
                  'To help us create your personalized plan'),
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 120,
                  perspective: 0.005,
                  diameterRatio: 2.0,
                  onSelectedItemChanged: (e) {
                    setState(() {
                      choosedAge = e;
                    });
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 70,
                    builder: (context, index) {
                      return AnimatedContainer(
                        width: 100.w,
                        duration: const Duration(milliseconds: 400),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 5.0,
                                color: index == choosedAge
                                    ? kPrimaryColor
                                    : Colors.transparent),
                            bottom: BorderSide(
                                width: 5.0,
                                color: index == choosedAge
                                    ? kPrimaryColor
                                    : Colors.transparent),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            index.toString(),
                            style: TextStyle(
                                color: index == choosedAge
                                    ? kWhiteColor
                                    : kGreyColor,
                                fontSize:index == choosedAge? 50.sp:35.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backArrow(),
                  nextButton(
                    'Next',
                    (() => Get.to(const AddWeightScreen())),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
