import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/registration/add_goal.dart';
import 'package:plant_app_ui/style.dart';

import '../widgets.dart';

class AddWeightScreen extends StatefulWidget {
  const AddWeightScreen({Key? key}) : super(key: key);

  @override
  State<AddWeightScreen> createState() => _AddWeightScreenState();
}

class _AddWeightScreenState extends State<AddWeightScreen> {
  int chooseWeight = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kDefaultPadding,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedHeight(40),
              registrationHeader(
                  "What's your weight?", 'You can always change this later'),
              Expanded(
                child: RotatedBox(
                  quarterTurns: -1,
                  child: ListWheelScrollView.useDelegate(
                    itemExtent: 120,
                    perspective: 0.005,
                    diameterRatio: 2.0,
                    onSelectedItemChanged: (e) {
                      setState(() {
                        chooseWeight = e;
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
                                  color: index == chooseWeight
                                      ? kPrimaryColor
                                      : Colors.transparent),
                              bottom: BorderSide(
                                  width: 5.0,
                                  color: index == chooseWeight
                                      ? kPrimaryColor
                                      : Colors.transparent),
                            ),
                          ),
                          child: RotatedBox(
                            quarterTurns: -3,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    index.toString(),
                                    style: TextStyle(
                                        color: index == chooseWeight
                                            ? kWhiteColor
                                            : kGreyColor,
                                        fontSize: index == chooseWeight
                                            ? 50.sp
                                            : 35.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  sizedWidth(10),
                                  index == chooseWeight
                                      ? Text(
                                          'Kg',
                                          style: TextStyle(fontSize: 20.sp),
                                        )
                                      : const Text('')
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backArrow(),
                  nextButton(
                    'Next',
                    (() => Get.to(const AddGoalScreen())),
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
