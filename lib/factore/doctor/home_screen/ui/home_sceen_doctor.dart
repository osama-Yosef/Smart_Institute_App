import 'package:flutter/material.dart';
import 'package:smart_institute_app/core/widget/app_bar_home_screen.dart';

class HomeSceenDoctor extends StatelessWidget {
  const HomeSceenDoctor({super.key});

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

            ],
          ),
        ),
      ),
    );
  }
}
