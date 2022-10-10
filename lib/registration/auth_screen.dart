import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_app_ui/mainscreen/homepage.dart';
import 'package:plant_app_ui/registration/verification.dart';
import 'package:plant_app_ui/style.dart';

import '../widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 2,
          child: SizedBox(
            height: Get.mediaQuery.size.height,
            child: Stack(
              children: [
                TabBarView(children: [
                  Column(
                    children: [
                      ClipPath(
                        clipper: NativeClipper(),
                        child: Container(
                          width: double.infinity,
                          height: 500.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/h.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Welcome back,',
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 45.sp,
                                      fontWeight: FontWeight.w100),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: kDefaultPadding,
                        child: Column(
                          children: [
                            inputComponent('Email'),
                            sizedHeight(20),
                            inputComponent('Password'),
                            sizedHeight(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password ? ',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 16.sp),
                                    ))
                              ],
                            ),
                            sizedHeight(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    badge(Icons.apple),
                                    sizedWidth(10),
                                    badge(Icons.facebook_sharp),
                                  ],
                                ),
                                nextButton(
                                    'Login', (() => Get.to(const HomePage()))),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipPath(
                        clipper: NativeClipper(),
                        child: Container(
                          width: double.infinity,
                          height: Get.mediaQuery.size.height / 2,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/d.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Hello ',
                                    style: TextStyle(
                                        color: kWhiteColor,
                                        fontFamily: 'roboto',
                                        fontSize: 35.sp,
                                        fontWeight: FontWeight.w100),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Newbie',
                                          style: TextStyle(
                                            fontSize: 35.sp,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Enter your information below or\n login with other account',
                                  style: TextStyle(
                                      color: kGreyColor,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w100),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: kDefaultPadding,
                        child: Column(
                          children: [
                            inputComponent('Email'),
                            sizedHeight(20),
                            inputComponent('Password'),
                            sizedHeight(10),
                            sizedHeight(20),
                            inputComponent('Password again'),
                            sizedHeight(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forgot Password ? ',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 16.sp),
                                    ))
                              ],
                            ),
                            sizedHeight(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    badge(Icons.apple),
                                    sizedWidth(10),
                                    badge(Icons.facebook_sharp),
                                  ],
                                ),
                                nextButton('Sign up',
                                    (() => Get.to(const VerficationScreen()))),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
                Column(
                  children: [
                    sizedHeight(20),
                    Container(
                      padding: kDefaultPadding,
                      width: 220.w,
                      child: TabBar(
                          indicatorColor: kPrimaryColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            Text(
                              'Login',
                              style: TextStyle(fontSize: 20.sp),
                            ),
                            Text(
                              'Sign up',
                              style: TextStyle(fontSize: 20.sp),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Column(
//           children: [
//             ClipPath(
//               clipper: NativeClipper(),
//               child: Container(
//                 width: double.infinity,
//                 height: 500.h,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage('assets/a.jpg'), fit: BoxFit.cover),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.w),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Welcome back,',
//                         style: TextStyle(
//                             color: kWhiteColor,
//                             fontSize: 45.sp,
//                             fontWeight: FontWeight.w100),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               padding: kDefaultPadding,
//               child: Column(
//                 children: [
//                   inputComponent('Email'),
//                   sizedHeight(20),
//                   inputComponent('Password'),
//                   sizedHeight(10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Forgot Password ? ',
//                             style: TextStyle(
//                                 color: kPrimaryColor, fontSize: 16.sp),
//                           ))
//                     ],
//                   ),
//                   sizedHeight(20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           badge(Icons.apple),
//                           sizedWidth(10),
//                           badge(Icons.facebook_sharp),
//                         ],
//                       ),
//                       nextButton('Login', (() {})),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
