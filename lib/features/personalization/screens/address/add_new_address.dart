import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: EAppBar(
        title: Text('Add New Address',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                // Add new address form
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    hintText: 'Enter your full name',
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                    prefixIcon: Icon(Iconsax.mobile),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'City',
                          hintText: 'Enter your city',
                          prefixIcon: Icon(Icons.location_city),
                        ),
                      ),
                    ),
                    const SizedBox(width: ESizes.spaceBtwItems),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'State',
                          hintText: 'Enter your state',
                          prefixIcon: Icon(Iconsax.activity1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: ESizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Postal Code',
                    hintText: 'Enter your postal code',
                    prefixIcon: Icon(Iconsax.code),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Address Line 1',
                    hintText: 'Enter your address line 1',
                    prefixIcon: Icon(Iconsax.location),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Address Line 2',
                    hintText: 'Enter your address line 2',
                    prefixIcon: Icon(Iconsax.location),
                  ),
                ),
                const SizedBox(height: ESizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Country',
                    hintText: 'Enter your country',
                    prefixIcon: Icon(Iconsax.global),
                  ),
                ),
                const SizedBox(height: ESizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save Address'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
