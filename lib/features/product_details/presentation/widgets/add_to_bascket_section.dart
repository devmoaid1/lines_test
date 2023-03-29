import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lines_test/core/widgets/add_to_bascket_button.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/product_details_cubit/product_details_cubit.dart';

class AddToBascketSection extends StatelessWidget {
  const AddToBascketSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
      return AddToBascketButton(product: state.product!);
    });
  }
}
