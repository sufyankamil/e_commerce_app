import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../custom_shapes/containers/circular_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded-image.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: dark ? EColors.darkerGrey : EColors.white,
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        boxShadow: [EShadowStyle.verticalShadow],
      ),
      child: Column(
        children: [
          /// Thumbnail, Wishlist Button, Discount Tag
          ECircularContainer(
            height: 180,
            padding: const EdgeInsets.all(ESizes.sm),
            bgColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                /// Thumbnail Image
                const ERoundedImage(
                  imageUrl: EImages.product1,
                  applyImageRadius: true,
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
                          .copyWith(color: EColors.black),
                    ),
                  ),
                ),

                /// Favorite Icon Btn
                Positioned(
                  top: 0,
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
        ],
      ),
    );
  }
}
