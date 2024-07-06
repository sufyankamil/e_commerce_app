import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_item.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ECartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 440,
              floating: true,
              pinned: true,
              backgroundColor: dark ? EColors.dark : EColors.white,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(ESizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // Search Bar
                    const SizedBox(height: ESizes.spaceBtwItems),
                    ESearchContainer(
                      text: 'Search in store',
                      onTap: () {},
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: ESizes.spaceBtwSections),

                    // Featured Brands
                    ESectionHeading(
                      title: 'Featured Brands',
                      showActionButton: true,
                      onButtonPressed: () {},
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems / 1.5),

                    EGridLayout(
                        itemCount: 5,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: ECircularContainer(
                              padding: const EdgeInsets.all(ESizes.sm),
                              showBorder: true,
                              bgColor: Colors.transparent,
                              child: Row(
                                children: [
                                  // Icon
                                  const Flexible(
                                    child: ECircularImage(
                                      imageUrl: EImages.clothes,
                                      isNetworkImage: false,
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  const SizedBox(
                                      width: ESizes.spaceBtwItems / 2),

                                  // Text
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const EBrandTitleWithIcon(
                                          title: 'Wrogn',
                                          textSize: TextSizes.large,
                                        ),
                                        Text(
                                          '1000+ products',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
