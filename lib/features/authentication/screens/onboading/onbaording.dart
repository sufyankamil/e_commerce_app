import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboading_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboarding_indicator.dart';
import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../controller/onboarding/onboarding_controller.dart';

class Onbaording extends StatefulWidget {
  const Onbaording({super.key});

  @override
  State<Onbaording> createState() => _OnbaordingState();
}

class _OnbaordingState extends State<Onbaording> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.updateCurrentIndex(index);
            },
            children: [
              OnBoardingPage(
                image: EImages.shoppingImage,
                title: ETexts.onBoardingTitle1,
                subtitle: ETexts.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: EImages.searchImage,
                title: ETexts.onBoardingTitle2,
                subtitle: ETexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: EImages.deliveryImage,
                title: ETexts.onBoardingTitle3,
                subtitle: ETexts.onBoardingSubtitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnbaordingIndicator(),
          const OnbaordingNextButton(),
        ],
      ),
    );
  }
}
