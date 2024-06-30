import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../verify_email.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ESizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          // username field
          TextFormField(
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Email Field
          TextFormField(
            decoration: const InputDecoration(
              labelText: ETexts.email,
              hintText: ETexts.emailHint,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Phone Number Field
          TextFormField(
            decoration: const InputDecoration(
              labelText: ETexts.phoneNumber,
              hintText: ETexts.phoneNumberHint,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Password Field
          TextFormField(
            decoration: const InputDecoration(
              labelText: ETexts.password,
              hintText: ETexts.passwordHint,
              prefixIcon: Icon(Iconsax.lock),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwSections),

          // Terms & Conditions
          const TermsConditionWidget(),

          const SizedBox(height: ESizes.spaceBtwSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: EColors.primaryColor,
              ),
              child: const Text(ETexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
