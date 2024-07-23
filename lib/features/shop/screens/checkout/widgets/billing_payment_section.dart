import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class EBillingPaymentSection extends StatelessWidget {
  const EBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        ESectionHeading(
          title: 'Payment Method',
          buttonText: 'Change',
          onButtonPressed: () {},
        ),
        const SizedBox(height: ESizes.sm),
        Row(
          children: [
            ECircularContainer(
              bgColor: dark ? EColors.light : Colors.white,
              padding: const EdgeInsets.all(ESizes.sm),
              child: const Icon(
                Icons.paypal,
                color: EColors.primaryColor,
              ),
            ),
            const SizedBox(width: ESizes.sm),
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}
