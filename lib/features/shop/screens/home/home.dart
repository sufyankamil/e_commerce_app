import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';

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
                  const ESearchContainer(text: 'Search for products'),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: ESizes.defaultSpace, right: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        ESectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),

                  /// Categories
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: ESizes.spaceBtwItems),
                              width: 55,
                              height: 55,
                              padding: const EdgeInsets.all(ESizes.sm),
                              decoration: BoxDecoration(
                                color: EColors.white,
                                borderRadius:
                                    BorderRadius.circular(ESizes.cardRadiusSm),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
