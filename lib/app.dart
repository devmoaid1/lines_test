import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/theme/light_theme.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/add_ons_cubit/add_ons_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/cubit/sizes_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/recommendation_cubit/recommendation_cubit.dart';

import 'core/constants/app_strings.dart';
import 'core/cubits/cubit/cart_cubit.dart';
import 'core/dependencies.dart';
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
        return BlocProvider<CartCubit>(
          create: (context) => sl<CartCubit>(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) =>
                Directionality(textDirection: TextDirection.rtl, child: child!),
            title: AppStrings.appName,
            theme: lightTheme,
            home: MultiBlocProvider(providers: [
              BlocProvider(
                create: (context) =>
                    sl<ProductDetailsCubit>()..getProduct(productId: 1),
              ),
              BlocProvider(
                create: (context) => sl<SizesCubit>()..getSizes(productId: 1),
              ),
              BlocProvider(
                create: (context) => sl<AddOnsCubit>()..getAddOns(productId: 1),
              ),
              BlocProvider(
                create: (context) => sl<RecommendationCubit>()
                  ..getRecommendedProducts(relativeId: 1),
              )
            ], child: const ProductDetailsView()),
          ),
        );
      },
    );
  }
}
