import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: EAppBar(
        title:
            Text('Checkout', style: Theme.of(context).textTheme.headlineSmall),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const ECartItems(showButtons: false),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Coupon Code
              const ECouponWidget(),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Billing Details
              ECircularContainer(
                showBorder: true,
                bgColor: dark ? EColors.black : EColors.white,
                padding: const EdgeInsets.all(ESizes.md),
                child: const Column(
                  children: [
                    /// Pricing
                    EBillingAmountSection(),
                    SizedBox(height: ESizes.spaceBtwItems),

                    /// Divider
                    Divider(color: EColors.grey),
                    SizedBox(height: ESizes.spaceBtwItems),

                    /// Payment Method
                    EBillingPaymentSection(),
                    SizedBox(height: ESizes.spaceBtwItems),

                    /// Address
                    EBillingAddressSection(),
                    SizedBox(height: ESizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              title: 'Order Placed',
              subtitle: 'Your order has been placed successfully',
              icon: Icons.check_circle,
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$200'),
        ),
      ),
    );
  }
}
