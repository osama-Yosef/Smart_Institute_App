import 'package:flutter/material.dart';
import 'package:smart_institute_app/core/widget/app_bar_home_screen.dart';
import 'package:smart_institute_app/core/widget_student/my_schedule.dart';

import '../../../../core/widget/properties.dart';
import '../../../../core/widget_student/welcome_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              ///app bar
              AppBarHomeScreen(),

              ///Welcome container
              WelcomeContainer(),
              SizedBox(height: 27),

              /// properties
              Properties(),
              SizedBox(height: 20),

              /// MySchedule
              MySchedule(),
              SizedBox(height: 20),

              /// AI

            ],
          ),
        ),
      ),
    );
  }
}
