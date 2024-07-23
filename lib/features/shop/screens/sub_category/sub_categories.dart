import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/rounded-image.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const EAppBar(
          title: Text('Electronics'),
          actions: [],
          showBackButton: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              children: [
                /// Banner
                const ERoundedImage(
                  imageUrl: EImages.electronics,
                  width: double.infinity,
                  applyImageRadius: true,
                  height: 200,
                ),
                const SizedBox(height: ESizes.spaceBtwSections),

                /// Sub Categories
                Column(
                  children: [
                    ESectionHeading(
                        title: 'Electronics', onButtonPressed: () {}),
                    const SizedBox(height: ESizes.spaceBtwItems / 2),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (_, index) =>
                            const SizedBox(width: ESizes.spaceBtwItems),
                        itemBuilder: (_, index) {
                          return const ProductCardHorizontal();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
