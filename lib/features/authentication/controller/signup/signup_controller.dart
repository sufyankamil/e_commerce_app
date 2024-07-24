import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/personalization/models/user_model.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/network/network_manager.dart';
import '../../../../data/repositories/authentication/auth_repository.dart';
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
  void signUp() async {
    // Sign Up Logic
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          'We are creating your account', EImages.loadingAnimation);

      // Check Network
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Stop Loading
        EFullScreenLoader.stopLoadingDialog();
        return;
      }

      // Form Validation
      if (!formKey.currentState!.validate()) {
        // Stop Loading
        EFullScreenLoader.stopLoadingDialog();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        ELoaders.warningSnackBar(
            title: 'Warning', message: 'Please accept the privacy policy');
        return;
      }

      // Register User to Firebase
      final userData = await AuthRepository.instance
          .registerWithEmailAndPassword(
              emailController.text, passwordController.text);

      // Save User Data to Firebase Firestore
      final user = UserModel(
        id: userData.user!.uid,
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        username: usernameController.text.trim(),
        email: emailController.text.trim(),
        phoneNumber: phoneController.text.trim(),
        profilePicture: '',
      );

      final userRepo = Get.put(UserRepository());
      await userRepo.saveUserData(user);

      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();

      // Success Message
      ELoaders.successSnackBar(
          title: 'Success',
          message: 'Your account has been created. Verify your email to login');

      // Navigate to Verification Email Screen
      Get.to(
        () => VerifyEmailScreen(
          email: emailController.text.trim(),
        ),
      );
    } catch (e) {
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
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
