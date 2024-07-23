import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_cards.dart';
import 'package:e_commerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: EAppBar(
        title: Text('Brand Products'),
        actions: [],
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(ESizes.defaultSpace),
            child: Column(
              children: [
                ///  Brand Detail
                EBrandCard(showBanner: true),
                SizedBox(height: ESizes.spaceBtwSections),
                ESortableProduct(),
              ],
            )),
      ),
    );
  }
}
