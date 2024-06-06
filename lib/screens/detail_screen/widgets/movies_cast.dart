import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/cast_widget.dart';
import 'package:flutter/material.dart';

class MoviesCast extends StatelessWidget {
  const MoviesCast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            "Cast",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          children: [
            CastWidget(
              name: "Emily Carter",
              role: "Martine Bancrof",
              imgUrl: ImagePath.person1,
            ),
            CastWidget(
              name: "Ethan Bradley ",
              role: "Simon Stroud",
              imgUrl: ImagePath.person2,
            ),
          ],
        ),
        Row(
          children: [
            CastWidget(
              name: "Liam Thompson",
              role: "Simon Stroud ",
              imgUrl: ImagePath.person3,
            ),
            CastWidget(
              name: "Sophia Williams ",
              role: "Anna Morales ",
              imgUrl: ImagePath.person4,
            ),
          ],
        ),
      ],
    );
  }
}
