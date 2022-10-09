import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/mainscreen/homepage.dart';
import 'package:plant_app_ui/style.dart';
import 'package:plant_app_ui/widgets.dart';

class VerficationScreen extends StatefulWidget {
  const VerficationScreen({Key? key}) : super(key: key);

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedHeight(20),
            GestureDetector(
              onTap: () => Get.back(),
              child: CircleAvatar(
                backgroundColor: kDarkBgColor,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20.sp,
                  color: kWhiteColor,
                ),
              ),
            ),
            sizedHeight(40),
            Text(
              'Verification',
              style: TextStyle(fontSize: 35.sp),
            ),
            sizedHeight(10),
            Text(
              "Check your email. We've sent \n you the PIN at your email ",
              style: TextStyle(fontSize: 18.sp, color: kGreyColor),
            ),
            sizedHeight(30),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              numberOfFields: 6,
              autoFocus: true,
              borderColor: kWhiteColor,
              enabledBorderColor: kGreyColor,
              focusedBorderColor: kPrimaryColor,
              showFieldAsBox: false,
              onCodeChanged: (String code) {
                // print(con)
              },
              handleControllers: (controllers) {},
              onSubmit: (String verificationCode) {
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         title: const Text("Verification Code"),
                //         content: Text('Code entered is $verificationCode'),
                //       );
                //     });
              },
            ),
            sizedHeight(80),
            Center(
              child: Column(
                children: [
                  Text(
                    'Did you recieved any code?',
                    style: TextStyle(color: kPrimaryColor, fontSize: 18.sp),
                  ),
                  sizedHeight(30),
                  InkWell(
                    borderRadius: BorderRadius.circular(20.r),
                    onTap: () => Get.to(const HomePage()),
                    child: Container(
                        width: Get.mediaQuery.size.width / 2 + 50,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Center(
                            child: Text(
                          'Verify',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w600),
                        ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
