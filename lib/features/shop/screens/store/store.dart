import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_cards.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_item.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            ECartCounterIcon(
              onPressed: () {},
              iconColor: dark ? EColors.white : EColors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 440,
                floating: true,
                pinned: true,
                backgroundColor: dark ? EColors.dark : EColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(ESizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      // Search Bar
                      const SizedBox(height: ESizes.spaceBtwItems),
                      ESearchContainer(
                        text: 'Search in store',
                        onTap: () {},
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: ESizes.spaceBtwSections),

                      // Featured Brands
                      ESectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onButtonPressed: () {},
                      ),
                      const SizedBox(height: ESizes.spaceBtwItems / 1.5),

                      EGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            /// Brand Card
                            return const EBrandCard(
                              showBanner: true,
                            );
                          }),
                    ],
                  ),
                ),

                /// Tabs
                bottom: const ETabBar(tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Clothing'),
                  Tab(text: 'Footwear'),
                  Tab(text: 'Accessories'),
                  Tab(text: 'Electronics'),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
