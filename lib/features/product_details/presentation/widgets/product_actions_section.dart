import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/widgets/product_action_listTile.dart';

class ProductActionsSection extends StatelessWidget {
  const ProductActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductActionListTile(
          actionTitle: 'الطلبات',
          onTap: () {},
        ),
        const Divider(),
        ProductActionListTile(
          actionTitle: 'الخصائص',
          onTap: () {},
        ),
        const Divider(),
        ProductActionListTile(
          actionTitle: 'التقييمات',
          onTap: () {},
        ),
        20.h.vSpace
      ],
    );
  }
}
