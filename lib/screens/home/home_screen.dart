import 'package:aveg_project/screens/home/home_screen_controller.dart';
import 'package:aveg_project/widgets/custom_bundle_card.dart';
import 'package:aveg_project/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_bundle_loading_card.dart';
import '../../widgets/custom_category_card.dart';
import '../../widgets/custom_category_loading_card.dart';
import '../../widgets/custom_product_loading_card.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'Home Screen',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Get your ',
                        style: Theme.of(context).textTheme.headline5,
                        children: [
                          TextSpan(
                            text: 'groceries',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          )
                        ]),
                  ),
                  Text(
                    'delivered quickly',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Obx(
              () => controller.categoryLoading.isTrue
                  ? const SliverToBoxAdapter(
                      child: CustomCategoryLoadingCard(),
                    )
                  : controller.categories!.isNotEmpty
                      ? SliverToBoxAdapter(
                          child: SizedBox(
                            height: 120,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.categories!.length,
                              itemBuilder: (_, index) => CustomCategoryCard(
                                category: controller.categories![index],
                              ),
                            ),
                          ),
                        )
                      : const SliverToBoxAdapter(
                          child: Text('No cat found'),
                        ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Text(
                  'Bundle Offers',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Obx(
              () => controller.bundleLoading.isTrue
                  ? const SliverToBoxAdapter(
                      child: CustomBundleLoadingCard(),
                    )
                  : controller.bundles!.isEmpty
                      ? const SliverToBoxAdapter(
                          child: Text('No bundle'),
                        )
                      : SliverToBoxAdapter(
                          child: SizedBox(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.bundles!.length,
                              itemBuilder: (_, index) => CustomBundleCard(
                                bundle: controller.bundles![index],
                              ),
                            ),
                          ),
                        ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Text(
                  'Popular',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Obx(
              () => controller.productLoading.isTrue
                  ? SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, index) => const CustomProductLoadingCard(),
                      ),
                    )
                  : controller.products!.isEmpty
                      ? const SliverToBoxAdapter(
                          child: Text('No product to show'),
                        )
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (_, index) => CustomProductCard(
                                    product: controller.products![index],
                                  ),
                              childCount: controller.products!.length),
                        ),
            )
          ],
        ),
      ),
    );
  }
}
