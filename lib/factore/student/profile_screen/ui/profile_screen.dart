import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../auth/login/ui/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  void showLogoutDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Are you sure you want to",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 5.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Log out?",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// No Button
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "No",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),

                    /// Yes Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff172441),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                              (route) => false,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 8.h,
                        ),
                        child: Text(
                          "Yes",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff172441),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.r,
                  backgroundImage: AssetImage("assets/image/Mask group.png"),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Nadeem Tarek",
                  style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.h),
                Text(
                  "221730",
                  style: TextStyle(fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8F8F8F)),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Fourth-year",
                  style: TextStyle(fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5C74AA)),
                ),
                SizedBox(height: 5.h),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  width: 400.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                      color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.circular(28.5.r),
                  ),
                  child:  Text(
                    "My Courses",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  ),
                SizedBox(height: 5.h),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  width: 400.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.circular(28.5.r),
                  ),
                  child:  Text(
                    "About App",
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15.h),
                InkWell(
                  onTap: showLogoutDialog,
                  child: Center(
                    child: Container(
                      width: 150.w,
                      height: 40.h,
                      decoration:BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.r),

                      ) ,
                      child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
