import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomCategoryLoadingCard extends StatelessWidget {
  const CustomCategoryLoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Shimmer.fromColors(
            baseColor: const Color(0xffdcdcdc),
            highlightColor: const Color(0xffececec),
            child: Container(
              color: Colors.red,
              width: 100,
            ),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}
