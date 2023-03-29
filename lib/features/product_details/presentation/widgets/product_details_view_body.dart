import 'package:flutter/material.dart';
import 'package:lines_test/core/theme/styles.dart';
import 'package:lines_test/features/product_details/presentation/widgets/add_to_bascket_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_actions_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_addons_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_details_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_images_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_recommendation_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_store_section.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_wholesale_prices_section.dart';

import 'product_header_section.dart';
import 'product_sizes_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Layouts.kDefaultPadding,
        child: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: ProductHeaderSection(),
            ),
            SliverToBoxAdapter(
              child: ProductImagesSection(),
            ),
            SliverToBoxAdapter(
              child: ProductDetailsSection(),
            ),
            SliverToBoxAdapter(
              child: ProductWholeSalePricesSection(),
            ),
            SliverToBoxAdapter(
              child: ProductActionsSection(),
            ),
            SliverToBoxAdapter(
              child: ProductSizesSection(),
            ),
            SliverToBoxAdapter(
              child: ProductAddonsSection(),
            ),
            SliverToBoxAdapter(
              child: ProductStoreSection(),
            ),
            SliverToBoxAdapter(
              child: ProductRecommendationSection(),
            ),
            SliverToBoxAdapter(
              child: AddToBascketSection(),
            ),
          ],
        ),
      ),
    );
  }
}
