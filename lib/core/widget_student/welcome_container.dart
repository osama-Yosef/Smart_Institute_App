import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 22),
      width: 402.w,
      height: 190.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.5.r),
        color: Color(0xff172441),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to the Smart Institute App!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Register your courses easily and get smart recommendations.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 12.h),
          InkWell(
            onTap: () {},
            child: Container(
              height: 28.h,
              width: 159.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28.5.r),
              ),
              child: const Text(
                "Register Courses",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff172441),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
