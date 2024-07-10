import 'package:budget_buddy/src/features/auth/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Budget Buddy",
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
