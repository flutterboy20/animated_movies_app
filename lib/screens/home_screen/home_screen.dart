import 'package:animated_movies_app/constants/route_animation.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/data/movies_data.dart';
import 'package:animated_movies_app/screens/detail_screen/detail_screen.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/animated_stack.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/bottom_nav_bar.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/filters_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/header_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/movies_cover_widget.dart';
import 'package:animated_movies_app/screens/home_screen/widgets/search_field_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
              // Header widget
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.09,
                  left: 24,
                  right: 24,
                ),
                child: HeaderWidget(size: size),
              ),
              // Search Field widget
              Padding(
                padding: const EdgeInsets.only(
                  top: 28,
                ),
                child: SearchField(size: size),
              ),
              // Filters widget
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: FiltersWidget(),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, top: 14),
                  child: RichText(
                    text: const TextSpan(
                      text: "Featured ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "Movies",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Animated Stack
              Container(
                height: size.height * 0.4,
                padding: const EdgeInsets.all(38),
                child: AnimatedStackWidget(
                  itemCount: MoviesData.movies.length,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          zoomNavigation(
                            DetailScreen(
                              movieName: MoviesData.movies[index].name,
                              movieTypeAndEpisode:
                                  MoviesData.movies[index].movieTypeAndEpisode,
                              plot: MoviesData.movies[index].plot,
                              movieImage: MoviesData.movies[index].coverImage,
                              rating: MoviesData.movies[index].rating,
                            ),
                          ),
                        );
                      },
                      child:
                          MagazineCoverImage(movies: MoviesData.movies[index])),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
