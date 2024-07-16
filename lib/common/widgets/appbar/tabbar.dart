import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({
    super.key,
    required this.tabs, // List of tabs
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Material(
        color: dark ? Colors.black : Colors.white,
        child: TabBar(
          tabAlignment: TabAlignment.start,
          tabs: tabs,
          isScrollable: true,
          labelColor: dark ? Colors.white : Colors.black,
          unselectedLabelColor: EColors.greyDark,
          indicatorColor: EColors.primaryColor,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
