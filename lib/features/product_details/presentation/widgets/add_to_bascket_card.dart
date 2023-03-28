import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/widgets/custom_elevated_button.dart';

class AddToBascketCard extends StatelessWidget {
  const AddToBascketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(
            title: 'إضافة للسلة',
            onPressed: () {},
          ),
        ),
        20.h.vSpace
      ],
    );
  }
}
