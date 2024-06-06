import 'dart:ui';

import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// Movie cover and play button widget used in details screen
class MovieCoverAndPlayButton extends StatelessWidget {
  final String movieImage;
  const MovieCoverAndPlayButton({
    super.key,
    required this.size,
    required this.movieImage,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Movie Image
        SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: UiConstants.image(
            path: movieImage,
            fit: BoxFit.cover,
          ),
        ),
        // Back button
        Positioned(
          top: 50,
          left: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 40,
              width: 40,
              child: Container(
                color: Colors.black38,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Gradient container to give effect
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black12,
                    Color(0xff09071D),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
        ),
        // Play button lottie
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Lottie.asset(
                ImagePath.palyButtonLottie,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
