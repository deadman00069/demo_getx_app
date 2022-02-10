import 'package:aveg_project/config/app_config.dart';
import 'package:aveg_project/models/ProductModel.dart';
import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  final ProductModel product;

  const CustomProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              AppConfig.BASEURL + product.images!,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 9,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    product.description!,
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: const Color(0xff0E0F19),
                        ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
