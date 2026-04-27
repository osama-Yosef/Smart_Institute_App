import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'splash_screen/splach_screen.dart';
import '../onboarding/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  final bool seenOnBoarding;

  const MyApp({super.key, required this.seenOnBoarding});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: seenOnBoarding ? SplashScreen() : OnBoardingScreen(),
        );
      },
    );
  }
}