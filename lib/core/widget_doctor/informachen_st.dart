import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformachenSt extends StatelessWidget {
  const InformachenSt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundImage: AssetImage("assets/image/Mask group.png"),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4.h,
              children: [
                Text(
                  "Nadeem Tarek ",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Fourth-year",
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
        SizedBox(height: 20.h),
        PropertiesStudent(),
        SizedBox(height: 15.h),

      ],
    );
  }
}

class PropertiesStudent extends StatelessWidget {
  const PropertiesStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        Text(
          "Warnings \n 0",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Credit Hours \n 120",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "GPA \n 2.5",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
