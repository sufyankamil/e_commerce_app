import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_cards.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../utils/constants/sizes.dart';
import 'brand_products.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text('Brands'),
        actions: [],
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const ESectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: ESizes.spaceBtwItems),

              /// Brands
              EGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) {
                  return EBrandCard(
                    showBanner: true,
                    onTap: () => Get.to(
                      const BrandProducts(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
