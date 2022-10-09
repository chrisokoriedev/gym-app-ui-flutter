import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/registration/whatgender.dart';


import 'widgets.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  final controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80.sp),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          controller: controller,
          children: [
            walthroughWidget(
                'assets/a.jpg', 'Meet your coach,', 'start your journey'),
            walthroughWidget(
                'assets/b.jpg', 'Create a workout plan,', 'to stay fit'),
            walthroughWidgetII('assets/b.jpg', 'Action is the,',
                'key to all success', () => Get.to(const GenderScreen())),
          ],
        ),
      ),
      bottomSheet: bottomSheet(controller),
    );
  }
}
