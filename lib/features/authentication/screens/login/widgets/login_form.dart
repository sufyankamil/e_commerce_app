import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

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
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(ETexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: EColors.primaryColor,
                ),
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
                onPressed: () {},
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
