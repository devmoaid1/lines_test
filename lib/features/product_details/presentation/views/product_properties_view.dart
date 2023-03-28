import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_header.dart';
import '../widgets/property_card.dart';

class ProductPropertiesView extends StatelessWidget {
  const ProductPropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.75,
      child: Padding(
        padding: Layouts.kDefaultPadding,
        child: Column(
          children: [
            20.h.vSpace,
            const CustomHeader(
                title: 'التفاصيل', iconData: Icons.close, isFromRating: false),
            50.h.vSpace,
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return PropertyCard(
                    isColored: index % 2 == 0, // if even index  color the row
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
