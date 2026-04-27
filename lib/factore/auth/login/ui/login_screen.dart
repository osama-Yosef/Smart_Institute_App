import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_institute_app/core/widget_student/bottom_nav_bar.dart';

import '../../../../core/widget/custom_text_form.dart';
import '../../../../core/widget/password.dart';
import '../../../../core/widget_doctor/bottom_doc_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email is required")),
      );
      return;
    }

    if (passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password is required")),
      );
      return;
    }

    String email = emailController.text.toLowerCase();

    if (email.contains("doctor")) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomDocNav()),
      );
    } else if (email.contains("student")) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavBar()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("حدد هل أنت Doctor أو Student في الإيميل")),
      );
    }
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40.h),

              /// Header
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Student",
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                color: selectedIndex == 0
                                    ? Colors.blue
                                    : Colors.black,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              height: 2.h,
                              width: 50.w,
                              color: selectedIndex == 0
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Doctor",
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                                color: selectedIndex == 1
                                    ? Colors.blue
                                    : Colors.black,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              height: 2.h,
                              width: 50.w,
                              color: selectedIndex == 1
                                  ? Colors.blue
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),
              Image.asset("assets/image/Group 3.png"),

              SizedBox(height: 30.h),

              /// Email Label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Student Code",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 10.h),

              /// Email Field
              CustomTextForm(
                controller: emailController,
                hintText: "example@email.com",
                lapText: "Email",
              ),

              SizedBox(height: 25.h),

              /// Password Label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),

              SizedBox(height: 10.h),

              /// Password Field
              Password(controller: passwordController),

              SizedBox(height: 10.h),

              /// Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14, color: Color(0xff172441)),
                  ),
                ),
              ),

              SizedBox(height: 40.h),

              /// Login Button
              InkWell(
                onTap: login,
                child: Container(
                  height: 57.h,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff172441),
                    borderRadius: BorderRadius.circular(28.5.r),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              /// Create Account
              InkWell(
                onTap: () {},
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      TextSpan(
                        text: "Create account",
                        style: TextStyle(fontSize: 14.sp, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
