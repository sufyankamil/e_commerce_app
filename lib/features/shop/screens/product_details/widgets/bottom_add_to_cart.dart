import 'package:e_commerce_app/common/widgets/icons/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EBottomAddToCart extends StatelessWidget {
  const EBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ESizes.defaultSpace, vertical: ESizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? EColors.darkerGrey : EColors.light,
        boxShadow: [
          BoxShadow(
            color: dark
                ? EColors.greyDark.withOpacity(0.5)
                : EColors.grey.withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(ESizes.cardRadiusLg),
          topRight: Radius.circular(ESizes.cardRadiusLg),
        ),
      ),
      child: Row(
        children: [
          Row(
            children: [
              const ECircularIcon(
                icon: Iconsax.minus,
                backgroundColor: EColors.greyDark,
                width: 40,
                height: 40,
                color: EColors.white,
              ),
              const SizedBox(width: ESizes.spaceBtwItems),
              Text('1', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(width: ESizes.spaceBtwItems),
              const ECircularIcon(
                icon: Iconsax.add,
                backgroundColor: EColors.black,
                width: 40,
                height: 40,
                color: EColors.white,
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(ESizes.md),
              backgroundColor: EColors.black,
              side: BorderSide(
                color: EColors.black.withOpacity(0.5),
              ),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
