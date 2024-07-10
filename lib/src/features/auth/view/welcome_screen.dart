import 'package:budget_buddy/src/constants/colors.dart';
import 'package:budget_buddy/src/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:stroke_text/stroke_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              top: 100,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Lottie.asset("assets/lotties/money_animation.json",
                    width: 300, height: 300),
              )).animate().fadeIn(duration: 400.ms).moveY(duration: 400.ms),
          Positioned(
                  bottom: 300,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Center(
                        child: Text(
                          welcomeTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ))
              .animate()
              .fadeIn(delay: 300.ms, duration: 400.ms)
              .moveY(duration: 400.ms),
          Positioned(
                  bottom: 250,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Center(
                        child: Text(
                          welcomeDescription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ))
              .animate()
              .fadeIn(delay: 300.ms, duration: 400.ms)
              .moveY(duration: 400.ms),
          Positioned(
                  bottom: 150,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Expanded(
                              child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                foregroundColor: primaryColor,
                                side: BorderSide(color: primaryColor),
                                padding: EdgeInsets.symmetric(vertical: 15)),
                          )),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                foregroundColor: Colors.white,
                                backgroundColor: primaryColor,
                                side: BorderSide(color: primaryColor),
                                padding: EdgeInsets.symmetric(vertical: 15)),
                          ))
                        ],
                      ),
                    ),
                  ))
              .animate()
              .fadeIn(delay: 600.ms, duration: 400.ms)
              .moveY(duration: 400.ms),
        ],
      ),
    ));
  }
}
