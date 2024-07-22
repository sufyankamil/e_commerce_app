import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/cart/add_remove_cart.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: EAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    ECartItem(),
                    SizedBox(height: ESizes.spaceBtwItems),
                    Row(
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
            itemCount: 10),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$200'),
        ),
      ),
    );
  }
}
