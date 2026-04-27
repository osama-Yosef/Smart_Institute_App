import 'dart:async';
import 'package:flutter/material.dart';
import '../../auth/login/ui/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/splash.png", width: 150),
            SizedBox(height: 6),
            Text(
              "Smart",
              style: TextStyle(
                color: Color(0xff19253D),
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Institute",
              style: TextStyle(
                color: Color(0xff19253D),
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 6),
            Text(
              "App",
              style: TextStyle(
                color: Color(0xff19253D),
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
