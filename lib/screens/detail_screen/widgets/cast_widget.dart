import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:flutter/material.dart';

// Cast name and role widget used in details screen
class CastWidget extends StatelessWidget {
  final String name;
  final String role;
  final String imgUrl;
  const CastWidget({
    super.key,
    required this.name,
    required this.role,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.38,
            margin: const EdgeInsets.only(left: 18),
            padding:
                const EdgeInsets.only(left: 38, top: 8, bottom: 8, right: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    role,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            child: UiConstants.image(path: imgUrl, height: 52, width: 52),
          )
        ],
      ),
    );
  }
}
