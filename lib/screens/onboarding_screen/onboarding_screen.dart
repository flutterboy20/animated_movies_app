import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/constants/route_animation.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/screens/home_screen/home_screen.dart';
import 'package:animated_movies_app/screens/onboarding_screen/widgets/custom_marquee_widget.dart';
import 'package:flutter/material.dart';
import 'package:marqueer/marqueer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: UiConstants.backgroundGradient,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.2,
              ),
              // List of movies in marquee style
              const CustomMarqueeWidget(
                direction: MarqueerDirection.rtl,
              ),
              // List of movies in marquee style

              const CustomMarqueeWidget(
                direction: MarqueerDirection.ltr,
              ),
              // List of movies in marquee style

              const CustomMarqueeWidget(
                direction: MarqueerDirection.rtl,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 34),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                  "Watch everything you want\nfor free",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    zoomNavigation(
                      const HomeScreen(),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter now",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      width: size.width * 0.5,
                      child: Image.asset(
                        ImagePath.glowingButton,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
