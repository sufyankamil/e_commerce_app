import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class ERatingAndShare extends StatelessWidget {
  const ERatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.star,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(width: ESizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                text: '4.5',
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: ' (200)',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),

        /// Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: ESizes.iconSizeMd,
          ),
        ),
      ],
    );
  }
}
