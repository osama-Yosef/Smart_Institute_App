import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContanerScreen(
          adres: 'Dynamic Languages',
          date: 'Sun · 9:00 AM – 10:30 AM',
        ),
        SizedBox(height: 8.h),
        ContanerScreen(adres: 'English', date: 'Mon · 11:00 AM – 1:00 PM'),
        SizedBox(height: 8.h),
        ContanerScreen(
          adres: 'Discrete Mathematics',
          date: 'Wed · 2:00 PM – 4:00 PM',
        ),
        SizedBox(height: 8.h),
        ContanerScreen(
          adres: 'Dynamic Languages',
          date: 'Sun · 9:00 AM – 10:30 AM',
        ),
        SizedBox(height: 8.h),
        ContanerScreen(adres: 'English', date: 'Mon · 11:00 AM – 1:00 PM'),
        SizedBox(height: 8.h),
        ContanerScreen(
          adres: 'Discrete Mathematics',
          date: 'Wed · 2:00 PM – 4:00 PM',
        ),
      ],
    );
  }
}

class ContanerScreen extends StatelessWidget {
  final String adres;

  final String date;

  const ContanerScreen({super.key, required this.adres, required this.date});

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
            adres,
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
