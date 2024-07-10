import 'package:budget_buddy/src/constants/text_string.dart';
import 'package:budget_buddy/src/features/auth/controller/splash_screen_controller.dart';
import 'package:budget_buddy/src/features/auth/view/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 700),
                top: 140,
                left: splashController.animate.value ? 30 : -80,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 700),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        slashAppName,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        appTagLine,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ),
          Positioned(
              top: 260,
              left: 10,
              right: 10,
              child: Image(image: AssetImage("assets/images/splash.gif")))
        ]),
      ),
    );
  }
}
