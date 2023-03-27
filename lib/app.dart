import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/theme/light_theme.dart';

import 'core/constants/app_strings.dart';
import 'features/product_details/presentation/views/product_details_view.dart';

class LinesApp extends StatelessWidget {
  const LinesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, child) =>
              Directionality(textDirection: TextDirection.rtl, child: child!),
          title: AppStrings.appName,
          theme: lightTheme,
          home: const ProductDetailsView(),
        );
      },
    );
  }
}
