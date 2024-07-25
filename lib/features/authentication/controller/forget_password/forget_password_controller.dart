import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/network/network_manager.dart';
import '../../../../data/repositories/authentication/auth_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  // Variables
  final emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// -- Forget Password --
  forgetPassword() async {
    // Forget Password Logic
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          'We are sending you a password reset link', EImages.loadingAnimation);

      // Form Validation
      if (!formKey.currentState!.validate()) {
        // Stop Loading
        EFullScreenLoader.stopLoadingDialog();
        return;
      }

      // Check Network
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Stop Loading
        EFullScreenLoader.stopLoadingDialog();
        return;
      }

      // Send Password Reset Link
      await AuthRepository.instance.resetPassword(emailController.text.trim());

      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();

      // Show Success Snack Bar
      ELoaders.successSnackBar(
          title: 'Success',
          message:
              'A password reset link has been sent to your email address'.tr);

      // Redirect
      Get.to(() => ResetPassword(email: emailController.text.trim()));
    } catch (e) {
      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  resendPasswordResetLink(String email) async {
    // Resend Password Reset Link Logic
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          'We are sending you a password reset link', EImages.loadingAnimation);

      // Check Network
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Stop Loading
        EFullScreenLoader.stopLoadingDialog();
        return;
      }

      // Send Password Reset Link
      await AuthRepository.instance.resetPassword(email);

      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();

      // Show Success Snack Bar
      ELoaders.successSnackBar(
          title: 'Success',
          message: 'A password reset link has been sent to your email address');
    } catch (e) {
      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
