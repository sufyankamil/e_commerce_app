import 'package:e_commerce_app/features/authentication/controller/forget_password/forget_password_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                icon: const Icon(CupertinoIcons.clear),
                onPressed: () => Get.back()),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///Headings

                Lottie.asset(
                  EImages.accountCreation,
                  width: EHelperFunctions.screenWidth() * 0.6,
                ),

                const SizedBox(height: ESizes.spaceBtwSections),

                Text(
                  email ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: ESizes.spaceBtwSections),

                /// Title & Subtitle
                Text(
                  ETexts.resetPassword,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: ESizes.spaceBtwItems),

                Text(
                  ETexts.resetPasswordSubtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: ESizes.spaceBtwSections),

                /// Submit Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginScreen()),
                    child: const Text(ETexts.done),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => {
                      ForgetPasswordController.instance
                          .resendPasswordResetLink(email!)
                    },
                    child: const Text(ETexts.resendEmail),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
