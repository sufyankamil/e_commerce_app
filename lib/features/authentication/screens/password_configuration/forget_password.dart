import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/validators/validators.dart';
import '../../controller/forget_password/forget_password_controller.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Headings
            Text(
              ETexts.forgotPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(
              ETexts.forgotPasswordSubtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: ESizes.spaceBtwSections * 2),

            /// Text-field
            Form(
              key: controller.formKey,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: ETexts.email,
                  hintText: ETexts.emailHint,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
                controller: controller.emailController,
                validator: (value) => EValidator.validateEmail(value),
              ),
            ),

            const SizedBox(height: ESizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.forgetPassword(),
                child: const Text(ETexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
