import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: UiConstants.image(
              path: ImagePath.searchIcon,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: Text(
                "Search",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
            child: VerticalDivider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: UiConstants.image(
              path: ImagePath.micIcon,
            ),
          ),
        ],
      ),
    );
  }
}
