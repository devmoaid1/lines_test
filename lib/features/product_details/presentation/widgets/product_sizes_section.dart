import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/widgets/sub_heading.dart';

import '../viewmodels/sizes_cubit/sizes_cubit.dart';
import 'size_card.dart';

class ProductSizesSection extends StatelessWidget {
  const ProductSizesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubHeading(title: 'الحجم'),
        10.h.vSpace,
        SizedBox(
          height: 55.h,
          child: BlocBuilder<SizesCubit, SizesState>(
            builder: (context, state) => ListView.builder(
              itemCount: state.sizes!.length,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final size = state.sizes![index];
                return SizeCard(
                  onPressed: () =>
                      BlocProvider.of<SizesCubit>(context).selectSize(index),
                  isSelected: state.selectedSizeIndex == index,
                  size: size,
                );
              },
            ),
          ),
        ),
        26.h.vSpace,
      ],
    );
  }
}
