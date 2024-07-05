import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class ECircularContainer extends StatelessWidget {
  const ECircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = ESizes.cardRadiusLg,
    this.padding,
    this.child,
    this.bgColor = EColors.white,
    this.margin,
    this.showBorder = false,
    this.borderColor = EColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color bgColor;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bgColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
