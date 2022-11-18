import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

sizedHeight(double height) {
  return SizedBox(
    height: height,
  );
}

sizedWidth(double width) {
  return SizedBox(
    width: width,
  );
}

walthroughWidget(String imgDir, String title, String descpriction) {
  return Column(
    children: [
      ClipPath(
        clipper: NativeClipper(),
        child: Container(
          width: double.infinity,
          height: 500.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgDir), fit: BoxFit.cover)),
        ),
      ),
      sizedHeight(80.h),
      Text(
        title,
        style: TextStyle(color: kWhiteColor, fontSize: 28.sp),
      ),
      Text(
        descpriction,
        style: TextStyle(
            color: kWhiteColor, fontSize: 30.sp, fontWeight: FontWeight.w600),
      )
    ],
  );
}

walthroughWidgetII(
    String imgDir, String title, String descpriction, VoidCallback press) {
  return Column(
    children: [
      ClipPath(
        clipper: NativeClipper(),
        child: Container(
          width: double.infinity,
          height: 450.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgDir), fit: BoxFit.cover)),
        ),
      ),
      sizedHeight(80.h),
      Text(
        title,
        style: TextStyle(color: kWhiteColor, fontSize: 28.sp),
      ),
      Text(
        descpriction,
        style: TextStyle(
            color: kWhiteColor, fontSize: 30.sp, fontWeight: FontWeight.w600),
      ),
      sizedHeight(30),
      GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          width: Get.mediaQuery.size.width * 0.5 - 20,
          height: 50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r), color: kPrimaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Start Now',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16.sp,
              )
            ],
          ),
        ),
      )
    ],
  );
}

class NativeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

bottomSheet(PageController controller) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
    decoration: BoxDecoration(
        color: kBackgroundColor,
        border: Border.all(
          color: kBackgroundColor,
        )),
    height: 80.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: SwapEffect(
            dotWidth: 30.w,
            dotHeight: 3.h,
            spacing: 3.sp,
            radius: 1.r,
            type: SwapType.zRotation,
            strokeWidth: 10.w,
            dotColor: kDarkBgColor,
            activeDotColor: kPrimaryColor,
          ),
        )
      ],
    ),
  );
}

registrationHeader(String title, String des) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 38.sp, fontWeight: FontWeight.w600),
      ),
      sizedHeight(10),
      Text(
        des,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18.sp, color: kGreyColor),
      ),
    ],
  );
}

nextButton(String title, VoidCallback press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      width: 130.w,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30.r)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18.sp, fontWeight: FontWeight.w600, color: kWhiteColor),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 16.sp,
        )
      ]),
    ),
  );
}

backArrow() {
  return GestureDetector(
    onTap: () => Get.back(),
    child: Container(
        padding: EdgeInsets.all(15.sp),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: kDarkBgColor),
        child: Icon(
          Icons.arrow_back,
          size: 20.sp,
        )),
  );
}

inputComponent(String hintText) {
  return TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
        hintText: hintText,
        enabledBorder: borderStyle(0.9),
        focusedBorder: borderStyle(1.5),
        hintStyle: TextStyle(color: kGreyColor, fontSize: 19.sp)),
  );
}

UnderlineInputBorder borderStyle(double width) {
  return UnderlineInputBorder(
    borderSide: BorderSide(color: kGreyColor, width: width.sp),
  );
}

badge(IconData iconData) {
  return Container(
      padding: EdgeInsets.all(15.sp),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: kDarkBgColor),
      child: Icon(iconData));
}

mainComponentTraining(
    String title, String dec, String imgDir, VoidCallback press) {
  return InkWell(
    borderRadius: regularBorderRadius,
    onTap: press,
    child: Container(
      width: double.infinity,
      height: 200.h,
      padding: kDefaultPadding,
      decoration: BoxDecoration(
          borderRadius: regularBorderRadius,
          image: DecorationImage(
              image: AssetImage(imgDir),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.sp),
            ),
            sizedHeight(5),
            Container(
              padding: EdgeInsets.only(left: 5.sp),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(color: kPrimaryColor, width: 2.w))),
              child: Text(
                dec,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: kGreyColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ]),
    ),
  );
}

mainComponentTrainingII(
    String title, String dec, String imgDir, VoidCallback press) {
  return InkWell(
    borderRadius: regularBorderRadius,
    onTap: press,
    child: Container(
      width: 300,
      height: 200.h,
      padding: kDefaultPadding,
      decoration: BoxDecoration(
          borderRadius: regularBorderRadius,
          image: DecorationImage(image: AssetImage(imgDir), fit: BoxFit.cover)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.sp),
            ),
            sizedHeight(5),
            Container(
              padding: EdgeInsets.only(left: 5.sp),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(color: kPrimaryColor, width: 2.w))),
              child: Text(
                dec,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: kGreyColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ]),
    ),
  );
}

SingleChildScrollView workCatComponent() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        mainComponentTrainingII('Learn the basic of training',
            '07:00 - 08:00 AM', 'assets/j.jpg', () {}),
        sizedWidth(20),
        mainComponentTrainingII(
            'Day 01 - Warm Up', '07:00 - 08:00 AM', 'assets/e.jpg', () {}),
        sizedWidth(20),
        mainComponentTrainingII(
            'Day 01 - Warm Up', '07:00 - 08:00 AM', 'assets/a.jpg', () {}),
        sizedWidth(20),
      ],
    ),
  );
}

pillComponent(IconData iconData, String title) {
  return Container(
    width: 90.w,
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
    decoration:
        BoxDecoration(color: kDarkBgColor, borderRadius: regularBorderRadius),
    child: Row(
      children: [
        Icon(
          iconData,
          size: 20.sp,
        ),
        sizedWidth(5),
        Text(title)
      ],
    ),
  );
}

otherWarmCompo(String title, String imgDir) {
  return Container(
    width: double.infinity,
    decoration:
        BoxDecoration(borderRadius: regularBorderRadius, color: kDarkBgColor),
    child: Row(
      children: [
        Container(
          width: mediaQueryWidth * 0.3,
          height: 85.h,
          decoration: BoxDecoration(
              borderRadius: regularBorderRadius.copyWith(
                  topRight: sideRadius, bottomRight: sideRadius),
              color: kWhiteColor,
              image: DecorationImage(
                image: AssetImage(imgDir),
                fit: BoxFit.cover,
              )),
        ),
        sizedWidth(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 17.sp,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w600),
            ),
            sizedHeight(5),
            Text(
              '0:30',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        sizedWidth(40),
        Icon(
          Icons.arrow_right_alt,
          color: kGreyColor,
          size: 20.sp,
        ),
        sizedWidth(20),
      ],
    ),
  );
}
