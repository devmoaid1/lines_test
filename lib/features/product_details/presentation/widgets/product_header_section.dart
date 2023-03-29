import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/widgets/custom_header.dart';

class ProductHeaderSection extends StatelessWidget {
  const ProductHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.h.vSpace,
        const CustomHeader(
            title: 'عطور وتجميل',
            iconData: Icons.arrow_back,
            isFromRating: false),
        20.h.vSpace
      ],
    );
  }
}
