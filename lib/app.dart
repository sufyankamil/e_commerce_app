import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboading/onbaording.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      home: const Onbaording(),
    );
  }
}
