import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Brands
              const EBrandShowcase(
                images: [
                  EImages.product21,
                  EImages.product22,
                  EImages.product23,
                ],
              ),

              const SizedBox(height: ESizes.spaceBtwItems),

              /// Products
              ESectionHeading(
                title: 'You May Like',
                onButtonPressed: () {},
              ),

              const SizedBox(height: ESizes.spaceBtwItems),

              EGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const EProductCardVertical();
                },
              ),

              const SizedBox(height: ESizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
