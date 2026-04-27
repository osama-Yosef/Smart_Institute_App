import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'info_student.dart';

class ClassStudent extends StatelessWidget {
  final String name;

  final String year;

  const ClassStudent({super.key, required this.name, required this.year});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => InfoStudent()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
        width: 400.w,
        height: 77.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: Color(0xffE8E8E8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundImage: AssetImage("assets/image/Mask group.png"),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(0xff172441),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    year,
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
        ),
      ),
    );
  }
}
