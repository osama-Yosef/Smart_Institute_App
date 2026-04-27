import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_institute_app/core/widget/app_bar_home_screen.dart';
import 'package:smart_institute_app/core/widget_student/my_schedule.dart';

import '../../../../core/widget_doctor/my_corses_doc.dart';

class HomeSceenDoctor extends StatelessWidget {
  const HomeSceenDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ///app bar
              AppBarHomeScreen(),
              SizedBox(height: 10.h,),
              /// my corses
              MyCorsesDoc(),
              SizedBox(height: 10.h,),
              /// my schedule
              MySchedule(),


            ],
          ),
        ),
      ),
    );
  }
}
