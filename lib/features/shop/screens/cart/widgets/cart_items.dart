import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_cart.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({
    super.key,
    this.showButtons = true,
  });

  final bool showButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (_, index) => Column(
        children: [
          const ECartItem(),
          if (showButtons) const SizedBox(height: ESizes.spaceBtwItems),
          if (showButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),

                    /// Add & Remove Buttons
                    EProductQuantAddRemove(),
                  ],
                ),
                EProductPriceText(price: '200'),
              ],
            )
        ],
      ),
      separatorBuilder: (_, __) =>
          const SizedBox(height: ESizes.spaceBtwSections),
    );
  }
}
