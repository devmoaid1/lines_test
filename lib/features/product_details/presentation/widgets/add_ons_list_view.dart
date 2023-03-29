import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/add_ons_cubit/add_ons_cubit.dart';

import 'add_on_card.dart';

class AddOnsListView extends StatelessWidget {
  const AddOnsListView({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddOnsCubit, AddOnsState>(builder: (context, state) {
      return ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.only(right: 20.w),
        itemCount: state.addOns!.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final addOn = state.addOns![index];
          return AddOnCard(
            onSelect: () =>
                BlocProvider.of<AddOnsCubit>(context).selectAddOn(addOn: addOn),
            selected: state.selectedAddOn!.contains(addOn),
          );
        },
      );
    });
  }
}
