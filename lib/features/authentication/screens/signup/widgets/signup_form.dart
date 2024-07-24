import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_conditions.dart';
import 'package:e_commerce_app/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controller/signup/signup_controller.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    final controller = Get.put(SignupController());

    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstNameController,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  validator: (value) =>
                      EValidator.validateEmpty('First Name', value),
                ),
              ),
              const SizedBox(width: ESizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastNameController,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.lastName,
                  ),
                  validator: (value) =>
                      EValidator.validateEmpty('Last Name', value),
                ),
              ),
            ],
          ),
          const SizedBox(height: ESizes.spaceBtwInputFields),

          // username field
          TextFormField(
            controller: controller.usernameController,
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
            validator: (value) => EValidator.validateEmpty('Username', value),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

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

          // Phone Number Field
          TextFormField(
            controller: controller.phoneController,
            decoration: const InputDecoration(
              labelText: ETexts.phoneNumber,
              hintText: ETexts.phoneNumberHint,
              prefixIcon: Icon(Iconsax.call),
            ),
            validator: (value) => EValidator.validatePhoneNumber(value),
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
              validator: (value) => EValidator.validatePassword(value),
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
              onPressed: () => controller.signUp(),
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
