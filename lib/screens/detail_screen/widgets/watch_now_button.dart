import 'package:animated_movies_app/constants/images_path.dart';
import 'package:flutter/material.dart';

// Watch now button in detail screen
class WatchNowButton extends StatelessWidget {
  const WatchNowButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Colors.black,
      child: Stack(
        children: [
          const Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Watch now",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 140,
              width: size.width * 0.7,
              child: Image.asset(
                ImagePath.glowingButton,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
