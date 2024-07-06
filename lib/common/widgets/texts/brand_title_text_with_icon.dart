import 'package:e_commerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class EBrandTitleWithIcon extends StatelessWidget {
  const EBrandTitleWithIcon({
    super.key,
    this.textColor,
    this.iconColor = EColors.primaryColor,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.textSize = TextSizes.small,
  });

  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes textSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: EBrandTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            textSize: textSize,
          ),
        ),
        const SizedBox(width: ESizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: ESizes.iconSizeXs,
        ),
      ],
    );
  }
}
