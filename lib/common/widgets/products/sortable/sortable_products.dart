import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class ESortableProduct extends StatelessWidget {
  const ESortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items: ['Price', 'Rating', 'Popularity', 'Newest', 'Discount']
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: ESizes.spaceBtwSections),
        EGridLayout(
          itemCount: 10,
          itemBuilder: (_, index) {
            return const EProductCardVertical();
          },
        ),
      ],
    );
  }
}
