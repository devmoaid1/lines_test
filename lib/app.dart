import 'package:flutter/material.dart';

import 'core/constants/app_strings.dart';
import 'features/product_details/presentation/views/product_details_view.dart';

class LinesApp extends StatelessWidget {
  const LinesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductDetailsView(),
    );
  }
}
