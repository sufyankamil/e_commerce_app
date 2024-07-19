import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class EChoiceChip extends StatelessWidget {
  const EChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final getColor = EHelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: getColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? EColors.white : null),
        avatar: getColor
            ? ECircularContainer(
                bgColor: EHelperFunctions.getColor(text)!,
                width: 50,
                height: 50)
            : null,
        shape: getColor ? const CircleBorder() : null,
        labelPadding: getColor ? const EdgeInsets.all(0) : null,
        padding: getColor ? const EdgeInsets.all(0) : null,
        backgroundColor: getColor ? EHelperFunctions.getColor(text)! : null,
        selectedColor: getColor ? EHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
