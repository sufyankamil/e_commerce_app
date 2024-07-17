import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const Icon(Iconsax.user, color: EColors.white),
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: EColors.white),
        ),
        subtitle: Text(
          'user@email.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: EColors.white),
        ),
        trailing: IconButton(
          icon: const Icon(Iconsax.arrow_right_2, color: EColors.white),
          onPressed: onPressed,
        ));
  }
}
