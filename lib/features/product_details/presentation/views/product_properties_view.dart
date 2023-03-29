import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/product_details/presentation/viewmodels/properties_cubit/properties_cubit.dart';

import '../../../../core/dependencies.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_header.dart';
import '../widgets/properties_list_view.dart';
import '../widgets/property_card.dart';

class ProductPropertiesView extends StatelessWidget {
  const ProductPropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PropertiesCubit>(
      create: (context) => sl<PropertiesCubit>()..getProperties(productId: 1),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: Layouts.kBottomModalBorderRadius),
        height: context.height * 0.75,
        child: Padding(
          padding: Layouts.kDefaultPadding,
          child: Column(
            children: [
              20.h.vSpace,
              const CustomHeader(
                  title: 'الخصائص', iconData: Icons.close, isFromRating: false),
              50.h.vSpace,
              const Expanded(
                child: PropertiesListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
