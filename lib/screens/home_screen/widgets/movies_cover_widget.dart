import 'package:animated_movies_app/model/movies_model.dart';
import 'package:flutter/material.dart';

class MagazineCoverImage extends StatelessWidget {
  const MagazineCoverImage({
    required this.movies,
    super.key,
    this.height,
  });

  final Movies movies;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        height: height,
        child: AspectRatio(
          aspectRatio: .75,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(movies.coverImage),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 40,
                  offset: Offset(-20, 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
