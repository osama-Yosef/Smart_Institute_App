import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCorsesDoc extends StatelessWidget {
  const MyCorsesDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Courses",
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        Courses(adress: 'Dynamic Languages', cod: 'CS 311', date: '3 Credit Hours',),
        SizedBox(height: 5.h),
        Courses(adress: 'Dynamic Languages', cod: 'CS 311', date: '3 Credit Hours',),
        SizedBox(height: 5.h),
        Courses(adress: 'Dynamic Languages', cod: 'CS 311', date: '3 Credit Hours',),
        SizedBox(height: 5.h),
        Courses(adress: 'Dynamic Languages', cod: 'CS 311', date: '3 Credit Hours',),
      ],
    );
  }
}

class Courses extends StatelessWidget {
  final String adress;

  final String cod;
  final String date ;
  const Courses({super.key, required this.adress, required this.cod, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      width: 400.w,
      height: 75.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: Color(0xffE6E6E6),
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
          Row(
            children: [
              Text(
                cod,
                style: TextStyle(
                  color: Color(0xff5C74AA),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 15.w),
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
        ],
      ),
    );
  }
}
