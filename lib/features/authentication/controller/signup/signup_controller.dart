import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/network/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Sign Up
  Future<void> signUp() async {
    // Sign Up Logic
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          'We are creating your account', EImages.loadingAnimation);

      // Check Network
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (!formKey.currentState!.validate()) return;

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        ELoaders.warningSnackBar(
            title: 'Warning', message: 'Please accept the privacy policy');
        return;
      }

      // Register User to Firebase
    } catch (e) {
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
    } finally {
      EFullScreenLoader.stopLoadingDialog();
    }
  }

  // Dispose
  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }
}
