import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../features/product_details/data/models/product.dart';
import '../cubits/cubit/cart_cubit.dart';
import '../dependencies.dart';
import '../theme/app_colors.dart';
import '../utils/enums/button_type.dart';
import 'cart_quantity_row.dart';
import 'custom_clickable_card.dart';
import 'custom_elevated_button.dart';

class AddToBascketButton extends StatelessWidget {
  const AddToBascketButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(builder: (context, state) {
      bool isExist = sl<CartCubit>().checkIfItemInCart(product: product);
      if (isExist) {
        int quantity = sl<CartCubit>()
            .state
            .cartItems!
            .firstWhere(
              (element) => element.product == product,
            )
            .quantity!;
        return product is RecommendedProduct
            ? SizedBox(
                height: 36.h,
                child: CartQuantityRow(product: product, quantity: quantity))
            : Container(
                margin: EdgeInsets.only(bottom: 20.h),
                height: 48.h,
                child: CartQuantityRow(product: product, quantity: quantity));
      } else {
        return product is RecommendedProduct
            ? CustomClickableCard(
                onTap: () => addToCart(),
                buttonType: ButtonType.outlined,
                padding: EdgeInsets.symmetric(vertical: 6.h),
                child: Text(
                  'اضافة للسلة',
                  style: context.theme.textTheme.bodyMedium!
                      .copyWith(color: AppColors.kAppPrimaryColor),
                ))
            : Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                      title: 'إضافة للسلة',
                      onPressed: () => addToCart(),
                    ),
                  ),
                  20.h.vSpace
                ],
              );
      }
    });
  }

  void addToCart() => sl<CartCubit>().addToCart(product: product);
}
