import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_image.dart';

class ReviewImagesList extends StatelessWidget {
  final List<String> images;
  const ReviewImagesList({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40.h,
        child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(left: 10.w),
                child: CustomImage(
                  path: images[index],
                  width: 40.w,
                  height: 40.h,
                  fit: BoxFit.fill,
                ));
          },
        ));
  }
}
