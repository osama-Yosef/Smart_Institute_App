import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_institute_app/core/widget_doctor/bottom_doc_nav.dart';
import 'add_shwo_dailog.dart';
import 'info_registar.dart';
import 'informachen_st.dart';

class InfoStudent extends StatelessWidget {
  const InfoStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, weight: 15.sp,),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => BottomDocNav()),
                    (route) => false,
              );
            },
          ),
        ],
        title: Text(
          "Students",
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InformachenSt(),
              SizedBox(height: 15.h,),
              InfoRegistar(adres: 'Dynamic Languages',
                cod: 'CS 311',
                hour: '3 Credit Hours',),
              SizedBox(height: 5.h,),
              InfoRegistar(adres: 'Dynamic Languages',
                cod: 'CS 311',
                hour: '3 Credit Hours',),
              SizedBox(height: 5.h,),
              InfoRegistar(adres: 'Dynamic Languages',
                cod: 'CS 311',
                hour: '3 Credit Hours',),
              SizedBox(height: 5.h,),
              InfoRegistar(adres: 'Dynamic Languages',
                cod: 'CS 311',
                hour: '3 Credit Hours',),
              SizedBox(height: 5.h,),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        focusColor: Colors.transparent,
        onPressed: () {
          showCoursesSheet(context);
        },
        child: Icon(Icons.add_circle, size: 60.sp,),
      ),
    );
  }
}
