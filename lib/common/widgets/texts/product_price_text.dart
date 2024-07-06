import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EProductPriceText extends StatelessWidget {
  const EProductPriceText({
    super.key,
    this.currency = '\$',
    required this.price,
    this.isLarge = false,
    this.isLineThrough = false,
    this.maxLines = 1,
  });

  final String currency, price;
  final int maxLines;
  final bool isLarge;
  final bool isLineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: isLineThrough
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                color: isLineThrough ? EColors.grey : null,
              )
          : isLarge == false && isLineThrough == true
              ? Theme.of(context).textTheme.labelMedium!.copyWith(
                    decoration: isLineThrough
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: isLineThrough ? EColors.grey : null,
                  )
              : Theme.of(context).textTheme.titleLarge!.copyWith(
                    decoration: isLineThrough
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: isLineThrough ? EColors.grey : null,
                  ),
    );
  }
}
