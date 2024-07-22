import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class EProductQuantAddRemove extends StatelessWidget {
  const EProductQuantAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ECircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ESizes.md,
          color: dark ? EColors.white : EColors.black,
          backgroundColor: dark ? EColors.darkerGrey : EColors.light,
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        Text(
          '1',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        const ECircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ESizes.md,
          color: EColors.white,
          backgroundColor: EColors.primaryColor,
        ),
      ],
    );
  }
}
