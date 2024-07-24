import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/colors.dart';

class ELoaders {
  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      backgroundColor: EColors.primaryColor,
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: EColors.white),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
    );
  }

  static warningSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      backgroundColor: EColors.warningColor,
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.warning_2, color: EColors.white),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
    );
  }

  static errorSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      backgroundColor: EColors.errorColor,
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.close_square, color: EColors.white),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
    );
  }
}
