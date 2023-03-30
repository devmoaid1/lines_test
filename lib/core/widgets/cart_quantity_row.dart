import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../features/product_details/data/models/product.dart';
import '../constants/app_assets.dart';
import '../cubits/cubit/cart_cubit.dart';
import '../dependencies.dart';
import '../theme/app_colors.dart';
import 'custom_svg_icon.dart';

class CartQuantityRow extends StatelessWidget {
  const CartQuantityRow({
    super.key,
    required this.product,
    required this.quantity,
  });

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: () => sl<CartCubit>().decrementQuantity(product),
            child: CustomSvgIcon(
              iconPath: AppAssets.minusIcon,
              width: 20.w,
              height: 20.h,
            )),
        17.w.hSpace,
        Text(
          '$quantity',
          style: context.theme.textTheme.bodyLarge!
              .copyWith(color: AppColors.kHeadingsTextColor),
        ),
        17.w.hSpace,
        InkWell(
            onTap: () => sl<CartCubit>().incrementQuantity(product),
            child: CustomSvgIcon(
              iconPath: AppAssets.addIcon,
              width: 20.w,
              height: 20.h,
            )),
      ],
    );
  }
}
