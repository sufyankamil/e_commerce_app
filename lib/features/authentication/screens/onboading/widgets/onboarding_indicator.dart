import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../controller/onboarding_controller.dart';

class OnbaordingIndicator extends StatelessWidget {
  const OnbaordingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    final controller = Get.put(OnboardingController());

    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: (index) {
          controller.jumpToPage(index);
        },
        count: 3,
        effect:  ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: dark ? EColors.white : EColors.black,
          dotHeight: 8,
          dotWidth: 8,
          spacing: 10,
        ),
      ),
    );
  }
}