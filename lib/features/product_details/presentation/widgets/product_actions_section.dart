import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/utils/show_bottom_modal.dart';
import 'package:lines_test/core/widgets/product_action_listTile.dart';

import '../views/product_description_view.dart';

class ProductActionsSection extends StatelessWidget {
  const ProductActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductActionListTile(
          actionTitle: 'التفاصيل',
          onTap: () =>
              showCustomBottomModal(const ProductDescriptionView(), context),
        ),
        const Divider(),
        ProductActionListTile(
          actionTitle: 'الخصائص',
          onTap: () =>
              showCustomBottomModal(const ProductDescriptionView(), context),
        ),
        const Divider(),
        ProductActionListTile(
          actionTitle: 'التقييمات',
          onTap: () =>
              showCustomBottomModal(const ProductDescriptionView(), context),
        ),
        20.h.vSpace
      ],
    );
  }
}
