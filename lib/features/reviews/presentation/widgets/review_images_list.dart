import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_image.dart';

class ReviewImagesList extends StatelessWidget {
  const ReviewImagesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(left: 10.w),
              child: CustomImage(
                path: AppAssets.reviewImagePath,
                width: 40.w,
                height: 40.h,
                fit: BoxFit.fill,
              ));
        },
      ),
    );
  }
}
