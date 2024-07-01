import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            // Email Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: ETexts.email,
                hintText: ETexts.emailHint,
                prefixIcon: Icon(Iconsax.direct_right),
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
            const SizedBox(height: ESizes.spaceBtwInputFields / 2),

            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: EColors.primaryColor,
                      ),
                    ),
                    const SizedBox(width: ESizes.spaceBtwItems),
                    const Text(ETexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.off(() => const ForgetPassword()),
                  child: const Text(ETexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(ETexts.signIn),
              ),
            ),

            const SizedBox(height: ESizes.spaceBtwItems),

            // create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: dark ? Colors.white : EColors.grey,
                  ),
                ),
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(
                  ETexts.createAccount,
                  style: TextStyle(
                    color: dark ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
