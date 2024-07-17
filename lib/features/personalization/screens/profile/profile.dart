import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void copyToClipboard(String text) {
      Clipboard.setData(ClipboardData(text: text)).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("User ID  $text copied to clipboard"),
          backgroundColor: EColors.primaryColor,
        ));
      });
    }

    return Scaffold(
      appBar: const EAppBar(
        title: Text('Profile'),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Screen
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const Icon(
                    Iconsax.user,
                    size: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture'),
                  ),
                ],
              ),
            ),

            /// Details
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems),

            const ESectionHeading(
                title: 'Profile Information', showActionButton: false),
            const SizedBox(height: ESizes.spaceBtwItems),

            /// Personal Information
            EProfileMenu(onTap: () {}, title: 'Name ', value: 'John Doe'),
            EProfileMenu(
              onTap: () {},
              title: 'Username ',
              value: 'username-value',
            ),

            const SizedBox(height: ESizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems),

            const ESectionHeading(
                title: 'Personal Information', showActionButton: false),
            const SizedBox(height: ESizes.spaceBtwItems),

            EProfileMenu(
                onTap: () {
                  copyToClipboard('123456');
                },
                title: 'User ID ',
                value: '123456',
                icon: Iconsax.copy),
            EProfileMenu(
                onTap: () {}, title: 'E-mail ', value: 'user@gmail.com'),
            EProfileMenu(onTap: () {}, title: 'Phone ', value: '+1234567890'),
            EProfileMenu(onTap: () {}, title: 'Gender ', value: 'Male'),
            EProfileMenu(
                onTap: () {}, title: 'Date of Birth ', value: '01/01/2000'),

            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
