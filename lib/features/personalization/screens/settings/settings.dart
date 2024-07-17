import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  EAppBar(
                    title: Text('Settings',
                        style:
                            Theme.of(context).textTheme.headlineMedium!.apply(
                                  color: EColors.white,
                                )),
                    actions: const [],
                  ),

                  /// User Profile
                  EUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: ESizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  /// Account settings
                  const ESectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),

                  ESettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Add or remove address',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add or remove items',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.lock,
                    title: 'Change Password',
                    subtitle: 'Change your password',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Order History',
                    subtitle: 'View your order history',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Payment Methods',
                    subtitle: 'Add or remove payment methods',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Promo Codes',
                    subtitle: 'Add or remove promo codes',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Manage notifications',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Privacy & Security',
                    subtitle: 'Manage privacy and security',
                    onTap: () {},
                  ),

                  /// App Settings
                  const SizedBox(height: ESizes.spaceBtwSections),
                  const ESectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  ESettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Upload Documents',
                    subtitle: 'Upload your data to the cloud',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.language_circle,
                    title: 'Language',
                    subtitle: 'Change app language',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.sun,
                    title: 'Theme',
                    subtitle: 'Change app theme',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendations based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search results will be filtered',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Images',
                    subtitle: 'Set high quality images',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                  ESettingsMenuTile(
                    icon: Iconsax.logout,
                    title: 'Logout',
                    subtitle: 'Logout from your account',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
