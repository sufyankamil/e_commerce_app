import 'package:flutter/material.dart';

class ESectionHeading extends StatelessWidget {
  const ESectionHeading({
    super.key,
    required this.title,
    this.buttonText = 'View all',
    this.textColor,
    this.showActionButton = true,
    this.onButtonPressed,
  });

  final String title, buttonText;
  final Color? textColor;
  final bool showActionButton;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        showActionButton
            ? TextButton(
                onPressed: onButtonPressed,
                child: Text(buttonText),
              )
            : const SizedBox(),
      ],
    );
  }
}
