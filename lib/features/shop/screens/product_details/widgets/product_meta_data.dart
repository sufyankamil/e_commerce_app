import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            ECircularContainer(
              radius: ESizes.sm,
              bgColor: EColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: ESizes.sm, vertical: ESizes.xs),
              child: Text('20%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: EColors.black)),
            ),
            const SizedBox(width: ESizes.spaceBtwItems),

            /// Price
            Text(
              '\$ 1200',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: ESizes.spaceBtwItems),
            const EProductPriceText(price: '1000', isLarge: true),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 1.5),

        /// Title
        const ProductTitle(
          title: 'Apple iPhone 11 256GB',
          smallSize: false,
          maxLines: 1,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const ProductTitle(title: 'Status:'),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(height: ESizes.spaceBtwItems / 2),

        /// Brand
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.apple, color: dark ? EColors.white : EColors.black),
            const SizedBox(width: ESizes.spaceBtwItems),
            const EBrandTitleWithIcon(
                title: 'Apple', textSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
