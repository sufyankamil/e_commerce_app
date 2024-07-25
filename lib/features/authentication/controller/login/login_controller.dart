import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../common/widgets/network/network_manager.dart';
import '../../../../data/repositories/authentication/auth_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  // Variables
  final localStorage = GetStorage();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final hidePassword = true.obs;
  final rememberMe = false.obs;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    super.onInit();
    // Remember Me
    final rememberMeEmail = localStorage.read('REMEMBER_ME_EMAIL');
    final rememberMePassword = localStorage.read('REMEMBER_ME_PASSWORD');
    if (rememberMeEmail != null && rememberMePassword != null) {
      emailController.text = rememberMeEmail;
      passwordController.text = rememberMePassword;
      rememberMe.value = true;
    }
  }

  /// -- Email & Password Sign-in --
  void signIn() async {
    // Sign Up Logic
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          'We are logging you in', EImages.loadingAnimation);

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

      // Remember Me
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', emailController.text.trim());
        localStorage.write(
            'REMEMBER_ME_PASSWORD', passwordController.text.trim());
      }

      // Login User to Firebase
      final userCredential = await AuthRepository.instance
          .signInWithEmailAndPassword(
              emailController.text.trim(), passwordController.text.trim());

      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();

      // Redirect User
      AuthRepository.instance.screenRedirect();
    } catch (e) {
      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  /// --- Google Sign-in ---
  Future<void> googleSignIn() async {
    // Sign Up Logic
    try {
      // Start Loading
      EFullScreenLoader.openLoadingDialog(
          'We are logging you in', EImages.loadingAnimation);

      // Check Network
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Stop Loading
        EFullScreenLoader.stopLoadingDialog();
        return;
      }

      // Google Authentication
      final userCredential = await AuthRepository.instance.signInWithGoogle();

      // Save User Data to Firebase Firestore
      await userController.saveUserData(userCredential);

      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();

      // Redirect User
      AuthRepository.instance.screenRedirect();
    } catch (e) {
      // Stop Loading
      EFullScreenLoader.stopLoadingDialog();
      ELoaders.errorSnackBar(title: 'Error', message: e.toString());
    }
  }

  // Dispose
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();

    passwordController.dispose();
  }
}
