import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// Selected Attributes
        ECircularContainer(
          bgColor: dark ? EColors.darkerGrey : EColors.grey,
          padding: const EdgeInsets.all(ESizes.md),
          child: Column(
            children: [
              Row(
                children: [
                  ESectionHeading(
                      title: 'Variations',
                      showActionButton: false,
                      textColor: dark ? EColors.white : EColors.black),
                  const SizedBox(width: ESizes.spaceBtwItems),

                  /// Actual Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitle(
                              title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text('\$ 1000',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: ESizes.spaceBtwItems),

                          /// Sale Price
                          const EProductPriceText(price: '900'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const ProductTitle(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium!),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Details
              const ProductTitle(
                  title: 'Apple iPhone 11 256GB', smallSize: true, maxLines: 4),
            ],
          ),
        ),

        const SizedBox(height: ESizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(title: 'Color', showActionButton: false),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              children: [
                EChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (isSelected) {},
                ),
                EChoiceChip(
                  text: 'Purple',
                  selected: true,
                  onSelected: (isSelected) {},
                ),
                EChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (isSelected) {},
                ),
                EChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (isSelected) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              spacing: 10,
              children: [
                ChoiceChip(
                  label: const Text('S'),
                  selected: false,
                  onSelected: (isSelected) {},
                ),
                ChoiceChip(
                  label: const Text('M'),
                  selected: true,
                  onSelected: (isSelected) {},
                ),
                ChoiceChip(
                  label: const Text('L'),
                  selected: false,
                  onSelected: (isSelected) {},
                ),
                ChoiceChip(
                  label: const Text('XL'),
                  selected: false,
                  onSelected: (isSelected) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
