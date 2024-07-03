import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Iconsax.shopping_cart,
            color: iconColor ?? EColors.white,
          ),
          onPressed: onPressed,
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: EColors.errorColor,
              shape: BoxShape.circle,
            ),
            child: Text(
              "3",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: EColors.white, fontSizeFactor: 0.8),
            ),
          ),
        ),
      ],
    );
  }
}
