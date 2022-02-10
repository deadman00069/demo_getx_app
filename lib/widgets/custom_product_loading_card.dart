import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomProductLoadingCard extends StatelessWidget {
  const CustomProductLoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Shimmer.fromColors(
          baseColor: const Color(0xffdcdcdc),
          highlightColor: const Color(0xffececec),
          child: Row(
            children: [
              Container(
                color: Colors.green,
                width: 150,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      color: Colors.green,
                      height: 24,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.green,
                      height: 16,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.green,
                      height: 32,
                    ),
                    const Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('d'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
