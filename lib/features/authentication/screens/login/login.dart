import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/divider.dart';
import '../../../../common/widgets/login_signup/footer.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../controller/onboarding_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Header
              LoginHeader(dark: dark),

              const SizedBox(height: ESizes.defaultSpace),

              // Form
              LoginForm(dark: dark),

              // Divider
              FormDivider(dark: dark, text: ETexts.signInWith),

              // Footer
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
