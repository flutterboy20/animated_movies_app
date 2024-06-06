import 'package:flutter/material.dart';

// Move info and star rating used in details screen
class MovieInfoAndRating extends StatelessWidget {
  final String movieName;
  final String movieTypeAndEpisode;
  final int movieRating;
  
  const MovieInfoAndRating({
    super.key,
    required this.movieName,
    required this.movieTypeAndEpisode,
    required this.movieRating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Movie name
        Text(
          movieName,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        // Movie type and no. of episodes
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            movieTypeAndEpisode,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
        // Ratings stars
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    size: 32,
                    color: index < movieRating ? Colors.amber : Colors.grey,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
