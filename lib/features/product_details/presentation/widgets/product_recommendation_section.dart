import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/widgets/sub_heading.dart';

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
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const RecommendationCard();
            },
          ),
        ),
        20.h.vSpace
      ],
    );
  }
}
