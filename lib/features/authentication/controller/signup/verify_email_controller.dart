import 'dart:async';

import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/authentication/auth_repository.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForRedirect();
    super.onInit();
  }

  // Email Verification
  sendEmailVerification() async {
    try {
      await AuthRepository.instance.sendEmailVerification();

      // Show Success Message
      ELoaders.successSnackBar(
          title: 'Success',
          message:
              'A verification email has been sent to your email address. Please verify your email to continue');
    } catch (e) {
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  // Timer for Redirect
  setTimerForRedirect() {
    Timer.periodic(const Duration(seconds: 2), (timer) async {
      await FirebaseAuth.instance.currentUser!.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user!.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
              title: 'Email Sent',
              subtitle:
                  'A verification email has been sent to your email address. Please verify your email to continue',
              icon: CupertinoIcons.check_mark_circled_solid,
              onPressed: () => AuthRepository.instance.screenRedirect(),
            ));
      }
    });
  }

  // Manual Verification
  checkEmailVerificationStatus() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && user.emailVerified) {
      Get.off(() => SuccessScreen(
            title: ETexts.accountCreated,
            subtitle: ETexts.accountCreatedSubtitle,
            icon: CupertinoIcons.check_mark_circled_solid,
            onPressed: () => AuthRepository.instance.screenRedirect(),
          ));
    }
  }
}
