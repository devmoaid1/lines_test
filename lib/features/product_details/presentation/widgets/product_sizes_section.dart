import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/widgets/sub_heading.dart';

import 'size_card.dart';

class ProductSizesSection extends StatelessWidget {
  const ProductSizesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubHeading(title: 'الحجم'),
        10.h.vSpace,
        SizedBox(
          height: 55.h,
          child: ListView.builder(
            itemCount: 3,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizeCard(
                isSelected: index == 1,
                size: '100 مل (500 SAR)',
              );
            },
          ),
        ),
        10.h.vSpace,
      ],
    );
  }
}
