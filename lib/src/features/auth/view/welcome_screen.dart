import 'package:budget_buddy/src/constants/colors.dart';
import 'package:budget_buddy/src/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
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
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    width: 400,
                    height: 400,
                  ),
                ),
              )),
          Positioned(
            top: 320,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: StrokeText(
                  text: "BUDGET",
                  textStyle: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 50,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold)),
                  strokeColor: Colors.green,
                  strokeWidth: 3,
                ),
              ),
            ),
          ),
          Positioned(
            top: 380,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: StrokeText(
                  text: "BUDDY",
                  textStyle: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          fontSize: 50,
                          color: Colors.green,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold)),
                  strokeColor: Colors.green,
                  strokeWidth: 1,
                ),
              ),
            ),
          ),
          Positioned(
              top: 500,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Center(
                    child: Text(
                      welcomeDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 660,
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
                            foregroundColor: Colors.green,
                            side: BorderSide(color: Colors.green),
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
                            backgroundColor: Colors.green,
                            side: BorderSide(color: Colors.green),
                            padding: EdgeInsets.symmetric(vertical: 15)),
                      ))
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
