import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySchedule extends StatelessWidget {
  const MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Schedule",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),
        ContanerScreen(
          adress: 'Dynamic Languages',
          date: 'Sun · 9:00 AM – 10:30 AM',
        ),
        SizedBox(height: 8.h),
        ContanerScreen(adress: 'English', date: 'Mon · 11:00 AM – 1:00 PM'),
        SizedBox(height: 8.h),
        ContanerScreen(
          adress: 'Discrete Mathematics',
          date: 'Wed · 2:00 PM – 4:00 PM',
        ),
        SizedBox(height: 8.h),
        ContanerScreen(
          adress: 'Discrete Mathematics',
          date: 'Wed · 2:00 PM – 4:00 PM',
        ),
      ],
    );
  }
}

class ContanerScreen extends StatelessWidget {
  final String adress;

  final String date;

  const ContanerScreen({super.key, required this.adress, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      width: 400.w,
      height: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: Color(0xffD3DDF3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 3,
        children: [
          Text(
            adress,
            style: TextStyle(
              color: Color(0xff172441),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: Color(0xff5C74AA),
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
