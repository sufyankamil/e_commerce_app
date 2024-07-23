import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/order/widgets/order_list.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackButton: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: EOrderListItems(),
      ),
    );
  }
}
