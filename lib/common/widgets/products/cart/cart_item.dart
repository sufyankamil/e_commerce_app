import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded-image.dart';
import '../../texts/brand_title_text_with_icon.dart';
import '../../texts/product_title_text.dart';

class ECartItem extends StatelessWidget {
  const ECartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Image
        ERoundedImage(
          imageUrl: EImages.beauty,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(ESizes.sm),
          backgroundColor: dark ? EColors.darkerGrey : EColors.light,
        ),
        const SizedBox(width: ESizes.spaceBtwItems),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EBrandTitleWithIcon(title: 'Product Title'),
              const Flexible(
                child: ProductTitle(
                  title: 'Product Title',
                  maxLines: 1,
                ),
              ),

              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Size: ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'M',
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: ' | ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Color: ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Black',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
