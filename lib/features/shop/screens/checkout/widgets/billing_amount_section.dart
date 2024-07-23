import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBillingAmountSection extends StatelessWidget {
  const EBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Subtotal
        Row(
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$100', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ESizes.sm),

        /// Shipping Fee
        Row(
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$10', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),

        const SizedBox(height: ESizes.sm),

        /// Tax Fee
        Row(
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text('\$10', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        /// Total
        Row(
          children: [
            Text('Total', style: Theme.of(context).textTheme.headlineMedium),
            const Spacer(),
            Text('\$110', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
