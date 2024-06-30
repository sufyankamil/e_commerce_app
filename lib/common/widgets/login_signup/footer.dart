import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google
        Container(
          margin: const EdgeInsets.all(10),
          width: 55,
          height: 60,
          child: IconButton(
            iconSize: 30,
            icon: Lottie.asset(EImages.googleLogo),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: ESizes.spaceBtwItems,
        ),
        // Facebook
        Container(
          margin: const EdgeInsets.all(10),
          width: 55,
          height: 60,
          child: IconButton(
            iconSize: 30,
            icon: Lottie.asset(EImages.facebookLogo),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
