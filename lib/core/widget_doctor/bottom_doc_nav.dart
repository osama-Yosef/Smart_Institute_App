import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_institute_app/factore/student/profile_screen/ui/profile_screen.dart';
import '../../factore/doctor/home_screen/ui/home_sceen_doctor.dart';
import '../../factore/doctor/students_bage/ui/student_bag.dart';

class BottomDocNav extends StatefulWidget {
  const BottomDocNav ({super.key});

  @override
  State<BottomDocNav> createState() => _BottomDocNavState();
}

class _BottomDocNavState extends State<BottomDocNav> {
  final List<Widget> pages = [
    HomeSceenDoctor(),
    StudentBag(),
    ProfileScreen(),

  ];

  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "My Courses",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}