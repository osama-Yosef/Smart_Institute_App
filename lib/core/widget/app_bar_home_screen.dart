import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundImage: AssetImage("assets/image/Mask group.png"),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4.h,
            children: [
              Text(
                "Hi Nadeem!",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),

              Text(
                "Student",
                style: TextStyle(
                  color: Color(0xff5B5B5B),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
