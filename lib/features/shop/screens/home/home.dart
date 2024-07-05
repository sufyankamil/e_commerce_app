import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  const EHomeAppBar(),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  ESearchContainer(
                    text: 'Search for products',
                    onTap: () {},
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  /// Heading
                  const Padding(
                    padding: EdgeInsets.only(left: ESizes.spaceBtwItems),
                    child: ESectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: EColors.white,
                    ),
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),

                  /// Categories
                  const EHomeCategories(),
                ],
              ),
            ),

            /// Body
            const Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  EPromoSlider(
                    banners: [
                      EImages.banner1,
                      EImages.banner2,
                      EImages.banner3,
                      EImages.banner4,
                      EImages.banner5,
                    ],
                  ),
                  SizedBox(height: ESizes.spaceBtwSections),

                  /// Popular Products
                  EProductCardVertical(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
