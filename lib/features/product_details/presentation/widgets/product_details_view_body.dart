import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/widgets/custom_header.dart';
import 'package:lines_test/features/product_details/presentation/widgets/product_images_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: const CustomHeader(
                  title: 'عطور وتجميل',
                  iconData: Icons.arrow_back,
                  isFromRating: false),
            ),
          ),
          SliverToBoxAdapter(
            child: 20.h.vSpace,
          ),
          const SliverToBoxAdapter(
            child: ProductImagesSection(),
          ),
        ],
      ),
    );
  }
}
