import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EShadowStyle {
  static final verticalShadow = BoxShadow(
    color: EColors.greyDark.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );

  static final horizontalShadow = BoxShadow(
    color: EColors.greyDark.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(2, 0),
  );
}
