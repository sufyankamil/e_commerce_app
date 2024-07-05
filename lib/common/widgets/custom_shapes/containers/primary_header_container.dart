import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurvedEdges(
      child: Container(
        color: EColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,

          /// If [size.isFinite is not true], the widget will not be displayed as the height is not defined
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: ECircularContainer(
                  bgColor: EColors.textWhiteColor.withOpacity(0.1),
                  width: 400,
                  height: 300,
                  radius: 400,
                  padding: const EdgeInsets.all(0),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ECircularContainer(
                  bgColor: EColors.textWhiteColor.withOpacity(0.1),
                  width: 400,
                  height: 300,
                  radius: 400,
                  padding: const EdgeInsets.all(0),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
