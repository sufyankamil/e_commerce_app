import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/user_review_card.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text('Reviews & Ratings'),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Rating and reviews are verified by the store'),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// Overall Rating
              const EOverallProductRating(),
              const ERatingBarIndicator(rating: 4.1),

              Text('Based on 1000+ ratings',
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// User Reviews
              const EUserReviewsCard(),
              const SizedBox(width: ESizes.md),

              const EUserReviewsCard(),
              const SizedBox(width: ESizes.md),

              const EUserReviewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
