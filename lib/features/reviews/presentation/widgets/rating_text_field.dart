import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';

class RatingTextField extends StatelessWidget {
  const RatingTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149.h,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: Layouts.kSecondaryBorderRadius,
          border: Border.all(color: AppColors.kCheckBoxBorderColor)),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
