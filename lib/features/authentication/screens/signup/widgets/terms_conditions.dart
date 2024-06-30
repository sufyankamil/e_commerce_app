import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsConditionWidget extends StatelessWidget {
  const TermsConditionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
            activeColor: EColors.primaryColor,
          ),
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ETexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ETexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EColors.white : EColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? EColors.white : EColors.primaryColor,
                    ),
              ),
              TextSpan(
                text: ' ${ETexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ETexts.termsOfService,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EColors.white : EColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? EColors.white : EColors.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
