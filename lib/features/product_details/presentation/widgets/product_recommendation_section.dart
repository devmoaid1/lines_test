import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/widgets/sub_heading.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/recommendation_cubit/recommendation_cubit.dart';

import 'recommendation_card.dart';

class ProductRecommendationSection extends StatelessWidget {
  const ProductRecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubHeading(title: 'منتجات موصى بها من المتجر'),
        20.h.vSpace,
        SizedBox(
          height: 250.h,
          child: BlocBuilder<RecommendationCubit, RecommendationState>(
              builder: (context, state) {
            return ListView.builder(
              key: UniqueKey(),
              physics: const BouncingScrollPhysics(),
              itemCount: state.recommendations!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final product = state.recommendations![index];
                return RecommendationCard(
                  product: product,
                );
              },
            );
          }),
        ),
        20.h.vSpace
      ],
    );
  }
}
