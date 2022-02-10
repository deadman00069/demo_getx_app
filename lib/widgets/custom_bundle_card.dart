import 'package:aveg_project/config/app_config.dart';
import 'package:aveg_project/models/BundleModel.dart';
import 'package:flutter/material.dart';

class CustomBundleCard extends StatelessWidget {
  final BundleModel bundle;

  const CustomBundleCard({Key? key, required this.bundle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80,
              child: Image.network(
                AppConfig.BASEURL + bundle.image!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              '',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  '\$ ',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
