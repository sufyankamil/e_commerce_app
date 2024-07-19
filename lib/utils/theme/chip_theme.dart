import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._(); // To avoid creating an instance of this class

  static final lightChipTheme = ChipThemeData(
    disabledColor: EColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: EColors.black),
    selectedColor: EColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: EColors.white,
  );

  static const darkChipTheme = ChipThemeData(
    disabledColor: EColors.darkerGrey,
    labelStyle: TextStyle(color: EColors.white),
    selectedColor: EColors.primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: EColors.white,
  );
}
