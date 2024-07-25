import 'package:e_commerce_app/features/authentication/controller/login/login_controller.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:e_commerce_app/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    final controller = Get.put(LoginController());

    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            // Email Field
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                labelText: ETexts.email,
                hintText: ETexts.emailHint,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
              validator: (value) => EValidator.validateEmail(value),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            // Password Field
            Obx(
              () => TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(
                  labelText: ETexts.password,
                  hintText: ETexts.passwordHint,
                  prefixIcon: const Icon(Iconsax.lock),
                  suffixIcon: IconButton(
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                  ),
                ),
                obscureText: controller.hidePassword.value,
                validator: (value) =>
                    EValidator.validateEmpty('Password', value),
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
                      child: Obx(
                        () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) =>
                              controller.rememberMe.value = value!,
                          activeColor: EColors.primaryColor,
                        ),
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
                onPressed: () => controller.signIn(),
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
