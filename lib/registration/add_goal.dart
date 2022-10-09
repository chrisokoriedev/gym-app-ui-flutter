import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/registration/auth_screen.dart';

import '../style.dart';
import '../widgets.dart';

class AddGoalScreen extends StatefulWidget {
  const AddGoalScreen({Key? key}) : super(key: key);

  @override
  State<AddGoalScreen> createState() => _AddGoalScreenState();
}

class _AddGoalScreenState extends State<AddGoalScreen> {
  List getGoal = [
    'Gain Weight',
    'Lose Weight',
    'Get Filter',
    'Gain more flexible',
    'Learn the basic',
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kDefaultPadding,
        child: Center(
          child: Column(
            children: [
              sizedHeight(40),
              registrationHeader("What's your goal?",
                  'This help us create your personalized plan'),
              Expanded(
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 100,
                  perspective: 0.005,
                  diameterRatio: 2.0,
                  onSelectedItemChanged: (e) {
                    setState(() {
                      selected = e;
                    });
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: getGoal.length,
                    builder: (context, index) {
                      final data = getGoal[index];
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: 5.0,
                                color: index == selected
                                    ? kPrimaryColor
                                    : Colors.transparent),
                            bottom: BorderSide(
                                width: 5.0,
                                color: index == selected
                                    ? kPrimaryColor
                                    : Colors.transparent),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            data,
                            style: TextStyle(
                                color: index == selected
                                    ? kWhiteColor
                                    : kGreyColor,
                                fontSize: index == selected ? 35.sp : 30.sp,
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
                    (() => Get.to(const AuthScreen())),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
