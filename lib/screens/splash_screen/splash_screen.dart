import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboardingScreen();
  }

  // Navigating to Onboarding screen automatically after 2 seconds
  _navigateToOnboardingScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Lottie.asset(
            ImagePath.splashPlayLottie,
            repeat: true,
          ),
        ),
      ),
    ));
  }
}
