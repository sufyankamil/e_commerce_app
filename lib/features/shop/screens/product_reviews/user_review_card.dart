import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class EUserReviewsCard extends StatelessWidget {
  const EUserReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const ECircularContainer(
                  bgColor: EColors.light,
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.person, size: 20),
                ),
                const SizedBox(width: ESizes.spaceBtwItems),
                Text('User Name',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const SizedBox(width: ESizes.spaceBtwItems),

        /// Review Rating
        Row(
          children: [
            const ERatingBarIndicator(rating: 4.5),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('01 July 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        ReadMoreText(
          'This is a very good product. I am very happy with the quality of the product. I will recommend this product to my friends and family.',
          trimLines: 1,
          colorClickableText: EColors.primaryColor,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          style: Theme.of(context).textTheme.bodyMedium,
          moreStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: EColors.primaryColor),
          lessStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: EColors.primaryColor),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        /// Company Review
        ECircularContainer(
            bgColor: dark ? EColors.darkerGrey : EColors.grey,
            child: Padding(
              padding: const EdgeInsets.all(ESizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const ECircularContainer(
                            bgColor: EColors.light,
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.business, size: 20),
                          ),
                          const SizedBox(width: ESizes.sm),
                          Text('Company Name',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                      const Spacer(),
                      Text('01 July 2024',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  ReadMoreText(
                    'Thank you for your review. We are glad that you liked our product. We will try to improve our services in the future.',
                    trimLines: 1,
                    colorClickableText: EColors.primaryColor,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    style: Theme.of(context).textTheme.bodyMedium,
                    moreStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: EColors.primaryColor),
                    lessStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: EColors.primaryColor),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
