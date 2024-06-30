import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    this.image,
    required this.title,
    required this.subtitle,
    this.icon,
    required this.onPressed,
  });

  final String title, subtitle;

  final String? image;

  final IconData? icon;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null
                  ? Lottie.asset(
                      EImages.accountCreation,
                      width: EHelperFunctions.screenWidth() * 0.6,
                    )
                  : Icon(icon, size: 100, color: Colors.green),

              const SizedBox(height: ESizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(ETexts.continueText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
