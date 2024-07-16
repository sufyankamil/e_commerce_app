import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/circular_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_icon.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key,
    required this.showBanner,
    this.onTap,
  });

  final bool showBanner;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: ECircularContainer(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBanner,
        bgColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            const Flexible(
              child: ECircularImage(
                imageUrl: EImages.clothes,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const EBrandTitleWithIcon(
                    title: 'Brand Name',
                    textSize: TextSizes.large,
                  ),
                  Text(
                    '100+ Products',
                    style: Theme.of(context).textTheme.labelMedium,
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
