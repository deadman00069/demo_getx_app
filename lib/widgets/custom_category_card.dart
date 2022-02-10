import 'package:aveg_project/models/CategoryModel.dart';
import 'package:flutter/material.dart';

import '../config/app_config.dart';

class CustomCategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CustomCategoryCard({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        child: Column(
          children: [
            Image.network(
              AppConfig.BASEURL + category.image!,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              category.name!,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
