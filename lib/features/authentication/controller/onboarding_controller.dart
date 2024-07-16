import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get to => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs; // change design without using stateful widget or setState

  // Update Current Index when Page Scroll
  void updateCurrentIndex(int index) {
    currentIndex.value = index;
  }

  // Jump to specific page
  void jumpToPage(int index) {
    pageController.jumpToPage(index);
  }

  // Next Page
  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Skip Onboarding
  void skipOnboarding() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }

  // Finish Onboarding
  void finishOnboarding() {
    if(currentIndex.value == 2) {
      // Navigate to Login Screen
      Get.to(() => const LoginScreen());
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // Dispose
}