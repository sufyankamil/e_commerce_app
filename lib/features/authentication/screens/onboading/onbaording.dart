import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboading_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboarding_indicator.dart';
import 'package:e_commerce_app/features/authentication/screens/onboading/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/image_strings.dart';

class Onbaording extends StatefulWidget {
  const Onbaording({Key? key}) : super(key: key);

  @override
  State<Onbaording> createState() => _OnbaordingState();
}

class _OnbaordingState extends State<Onbaording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(
                image: EImages.onboarding1,
                title: ETexts.onBoardingTitle1,
                subtitle: ETexts.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                image: EImages.onboarding2,
                title: ETexts.onBoardingTitle2,
                subtitle: ETexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: EImages.onboarding3,
                title: ETexts.onBoardingTitle3,
                subtitle: ETexts.onBoardingSubtitle3,
              ),
            ],
          ),

          const OnBoardingSkip(),

          const OnbaordingIndicator(),
        ],
      ),
    );
  }
}




