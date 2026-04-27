import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_institute_app/core/widget_doctor/class_student.dart';

class StudentBag extends StatelessWidget {
  const StudentBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Students",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            spacing: 7.h,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),
              ClassStudent(name: 'Nadeem Tarek Ramadan', year: 'Fourth-year'),


            ],
          ),
        ),
      ),
    );
  }
}
