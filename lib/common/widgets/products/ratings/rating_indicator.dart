import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class ERatingBarIndicator extends StatelessWidget {
  const ERatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) =>
          const Icon(Iconsax.star1, color: EColors.primaryColor),
      rating: rating,
      itemCount: 5,
      itemSize: 20.0,
      unratedColor: EColors.grey,
      direction: Axis.horizontal,
    );
  }
}
