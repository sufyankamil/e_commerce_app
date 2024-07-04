import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return EVerticalImageText(
            image: index == 0
                ? EImages.electronics
                : index == 1
                    ? EImages.earphones
                    : index == 2
                        ? EImages.clothes
                        : index == 3
                            ? EImages.shoes
                            : EImages.beauty,
            title: index == 0
                ? 'Electronics'
                : index == 1
                    ? 'Earphones'
                    : index == 2
                        ? 'Clothes'
                        : index == 3
                            ? 'Shoes'
                            : 'Beauty',
            textColor: EColors.white,
            onTap: () {
              print('Category $index tapped');
            },
          );
        },
      ),
    );
  }
}
