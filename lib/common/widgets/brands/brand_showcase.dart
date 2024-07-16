import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/circular_container.dart';
import 'brand_cards.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    EHelperFunctions.isDarkMode(context);

    return ECircularContainer(
      showBorder: true,
      borderColor: EColors.greyDark,
      bgColor: Colors.transparent,
      padding: const EdgeInsets.all(ESizes.md),
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Column(
        children: [
          const EBrandCard(
            showBanner: false,
          ),

          const SizedBox(height: ESizes.spaceBtwItems),

          /// Brand (Top 3) Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Expanded(
        child: ECircularContainer(
      height: 100,
      bgColor: dark ? EColors.darkerGrey : EColors.light,
      margin: const EdgeInsets.only(right: ESizes.sm),
      padding: const EdgeInsets.all(ESizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ));
  }
}
