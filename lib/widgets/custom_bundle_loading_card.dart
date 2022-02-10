import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBundleLoadingCard extends StatelessWidget {
  const CustomBundleLoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Shimmer.fromColors(
                baseColor: const Color(0xffdcdcdc),
                highlightColor: const Color(0xffececec),
                child: SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 16,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 16,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
