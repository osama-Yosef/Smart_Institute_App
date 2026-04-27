import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_institute_app/factore/auth/login/ui/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,

      pages: [
        PageViewModel(
          title: "Welcome to\nSmart Institute App",
          body:
              "Manage your academic journey easily and access all institute services in one place.",
          image: Center(
            child: Image.asset(
              "assets/image/Illustration-PNG 1.png",
              width: 200,
            ),
          ),
        ),
        PageViewModel(
          title: "Register Courses Easily",
          body:
              "Each onboarding screen contains a short title, description, and a custom illustration that visually explains the feature.",
          image: Center(
            child: Image.asset("assets/image/unnamed 1@2x.png", width: 200),
          ),
        ),
        PageViewModel(
          title: "Smart AI\nRecommendations",
          body:
              "Each onboarding screen contains a short title, description, and a custom illustration that visually explains the feature.",
          image: Center(
            child: Image.asset("assets/image/Gemini_1.png", width: 200),
          ),
        ),
      ],
      dotsDecorator: DotsDecorator(
        activeColor: Color(0xff19253D),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      done: Text("Start", style: TextStyle(fontWeight: FontWeight.bold)),
      onDone: () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('seenOnBoarding', true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      },

      next: Icon(Icons.arrow_forward),
      skip: Text("Skip"),
      showSkipButton: true,
      onSkip: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      },
    );
  }
}
