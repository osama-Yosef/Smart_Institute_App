import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'factore/smart_institute/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final seen = prefs.getBool('seenOnBoarding') ?? false;

  runApp(MyApp(seenOnBoarding: seen));
}