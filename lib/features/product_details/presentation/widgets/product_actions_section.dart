import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/utils/show_bottom_modal.dart';
import 'package:lines_test/core/widgets/product_action_listTile.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';
import 'package:lines_test/features/product_details/presentation/views/product_properties_view.dart';

import '../../../reviews/presentation/views/ratings_view.dart';
import '../views/product_description_view.dart';

class ProductActionsSection extends StatelessWidget {
  const ProductActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductActionListTile(
          actionTitle: 'التفاصيل',
          onTap: () => showCustomBottomModal(
              ProductDescriptionView(
                product: BlocProvider.of<ProductDetailsCubit>(context)
                    .state
                    .product!,
              ),
              context),
        ),
        const Divider(),
        ProductActionListTile(
          actionTitle: 'الخصائص',
          onTap: () =>
              showCustomBottomModal(const ProductPropertiesView(), context),
        ),
        const Divider(),
        ProductActionListTile(
          actionTitle: 'التقييمات',
          onTap: () => showCustomBottomModal(const RatingsView(), context),
        ),
        20.h.vSpace
      ],
    );
  }
}
