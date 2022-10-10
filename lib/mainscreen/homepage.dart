import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/data/homelist.dart';
import 'package:plant_app_ui/mainscreen/warmup_details_screen.dart';
import 'package:plant_app_ui/style.dart';
import 'package:plant_app_ui/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedHeight(30),
              RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                      color: kWhiteColor,
                      fontFamily: 'roboto',
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w100),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Juliana,',
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
              ),
              Text(
                'Good morning.',
                style: TextStyle(color: kGreyColor, fontSize: 20.sp),
              ),
              sizedHeight(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  headerTextComponent('Today Workout Plan'),
                  Text(
                    'Mon 26 Apr',
                    style: TextStyle(color: kPrimaryColor, fontSize: 16.sp),
                  ),
                ],
              ),
              sizedHeight(20),
              mainComponentTraining('Day 01 - Warm Up', '07:00 - 08:00 AM',
                  'assets/m.jpg', () => Get.to(const WarmUpScreen())),
              sizedHeight(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  headerTextComponent('Workout Catergories'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(color: kPrimaryColor, fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: kDarkBgColor,
                    borderRadius: regularBorderRadius,
                  ),
                  child: TabBar(
                      controller: _tabController,
                      labelPadding: EdgeInsets.all(10.sp),
                      indicator: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: regularBorderRadius),
                      indicatorColor: kPrimaryColor,
                      tabs: [
                        Text(
                          'Beginner',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        Text(
                          'Immediate',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        Text(
                          'Advance',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ]),
                ),
              ),
              sizedHeight(5),
              SizedBox(
                height: 220,
                child: TabBarView(controller: _tabController, children: [
                  workCatComponent(),
                  workCatComponent(),
                  workCatComponent(),
                ]),
              ),
              sizedHeight(20),
              headerTextComponent('New Workout'),
              sizedHeight(20),
              SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                    itemCount: newWorkOutlist.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      final data = newWorkOutlist[index];
                      return Container(
                        width: 300.w,
                        height: 200.h,
                        margin: EdgeInsets.only(right: 20.sp),
                        decoration: BoxDecoration(
                            borderRadius: regularBorderRadius,
                            image: DecorationImage(
                                image: AssetImage(data.imageDir),
                                fit: BoxFit.cover)),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Text headerTextComponent(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20.sp),
    );
  }
}
