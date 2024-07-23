import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/rounded-image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: dark ? EColors.darkerGrey : EColors.lightContainer,
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
      ),
      child: Row(
        children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          ECircularContainer(
            height: 120,
            padding: const EdgeInsets.all(ESizes.sm),
            bgColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: ERoundedImage(
                      imageUrl: EImages.product1, applyImageRadius: true),
                ),

                /// Sale Tag
                Positioned(
                  top: 1,
                  child: ECircularContainer(
                    radius: ESizes.sm,
                    bgColor: EColors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: ESizes.sm, vertical: ESizes.xs),
                    child: Text(
                      '20%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: EColors.black),
                    ),
                  ),
                ),

                /// Favorite Icon Btn
                Positioned(
                  right: 0,
                  child: ECircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: ESizes.sm, left: ESizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitle(
                          title: 'Apple Iphone 11 Pro Max 128GB',
                          smallSize: true),
                      SizedBox(height: ESizes.spaceBtwItems / 2),
                      EBrandTitleWithIcon(title: 'Apple'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const Flexible(
                        child: EProductPriceText(
                          price: '1200',
                        ),
                      ),

                      /// Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                            color: EColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(ESizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    ESizes.productImageRadius))),
                        child: const SizedBox(
                          width: ESizes.iconSizeLg * 1.2,
                          height: ESizes.iconSizeLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: EColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
