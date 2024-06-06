import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/movie_cover_and_play_button_widget.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/movie_info_and_rating.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/movies_cast.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/plot_widget.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/watch_now_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String movieName;
  final String movieTypeAndEpisode;
  final String plot;
  final String movieImage;
  final int rating;
  const DetailScreen(
      {super.key,
      required this.movieName,
      required this.movieTypeAndEpisode,
      required this.plot,
      required this.movieImage,
      required this.rating});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: UiConstants.backgroundGradient,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Movie cover image and play button widget
              MovieCoverAndPlayButton(
                size: size,
                movieImage: movieImage,
              ),
              // Movie type and episode info
              MovieInfoAndRating(
                movieName: movieName,
                movieTypeAndEpisode: movieTypeAndEpisode,
                movieRating: rating,
              ),

              // Movie plot widget
              PlotWidget(
                moviePlot: plot,
              ),
              // Movies cast
              const MoviesCast(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WatchNowButton(size: size),
    );
  }
}
