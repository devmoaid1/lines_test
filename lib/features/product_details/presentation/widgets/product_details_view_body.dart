import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/styles.dart';
import 'package:lines_test/core/widgets/custom_header.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_details_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_images_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_wholesale_prices_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Layouts.kDefaultPadding,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: CustomHeader(
                  title: 'عطور وتجميل',
                  iconData: Icons.arrow_back,
                  isFromRating: false),
            ),
            SliverToBoxAdapter(
              child: 20.h.vSpace,
            ),
            const SliverToBoxAdapter(
              child: ProductImagesSection(),
            ),
            const SliverToBoxAdapter(
              child: ProductDetailsSection(),
            ),
            const SliverToBoxAdapter(
              child: ProductWholeSalePricesSection(),
            ),
          ],
        ),
      ),
    );
  }
}
