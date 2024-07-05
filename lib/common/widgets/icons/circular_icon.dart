import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class ECircularIcon extends StatelessWidget {
  const ECircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = ESizes.lg,
    this.color,
    this.backgroundColor,
    this.onTap,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor
            : dark
                ? EColors.black.withOpacity(0.9)
                : EColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: color != null
              ? color
              : dark
                  ? EColors.white
                  : EColors.black,
          size: size,
        ),
        onPressed: () {},
      ),
    );
  }
}
