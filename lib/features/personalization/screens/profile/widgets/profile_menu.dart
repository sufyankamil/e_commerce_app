import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class EProfileMenu extends StatelessWidget {
  const EProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_4,
    required this.onTap,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: ESizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: EColors.grey),
                  overflow: TextOverflow.ellipsis),
            ),
            Expanded(
              flex: 5,
              child: Text(value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis),
            ),
            Expanded(child: Icon(icon, size: 18))
          ],
        ),
      ),
    );
  }
}
