import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_app_ui/data/homelist.dart';
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
                  Text(
                    'Today Workout Plan',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  Text(
                    'Mon 26 Apr',
                    style: TextStyle(color: kPrimaryColor, fontSize: 16.sp),
                  ),
                ],
              ),
              sizedHeight(20),
              mainComponentTraining('Day 01 - Warm Up', '07:00 - 08:00 AM',
                  'assets/a.jpg', () {}),
              sizedHeight(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Workout Catergories',
                    style: TextStyle(fontSize: 22.sp),
                  ),
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
              SizedBox(
                height: 220,
                child: TabBarView(controller: _tabController, children: [
                  workCatComponent(),
                  workCatComponent(),
                  workCatComponent(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
