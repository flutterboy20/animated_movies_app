import 'dart:math' as math;

import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/data/movies_data.dart';
import 'package:flutter/material.dart';
import 'package:marqueer/marqueer.dart';

// This widget is used to apply marquee effect.
class CustomMarqueeWidget extends StatelessWidget {
  final MarqueerDirection direction;
  const CustomMarqueeWidget({
    super.key,
    required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -7 * math.pi / 180,
      child: SizedBox(
        height: 120,
        child: Marqueer.builder(
          pps: 100,
          direction: direction,
          restartAfterInteraction: true,
          interaction: false,
          itemCount: MoviesData.movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: UiConstants.image(
                  path: MoviesData.movies[index].coverImage,
                  height: 120,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
