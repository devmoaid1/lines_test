import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/features/reviews/presentation/viewmodels/add_rating/add_rating_cubit.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_check_box.dart';
import '../../../../core/widgets/custom_image.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class AddRatingImagesSection extends StatelessWidget {
  const AddRatingImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'اضافة صورة',
          style: context.theme.textTheme.bodyLarge!
              .copyWith(color: AppColors.kSubHeadingsTextColor),
        ),
        10.h.vSpace,
        Row(
          children: [
            CustomImage(
                path: AppAssets.reviewImagePath,
                width: 80.w,
                height: 80.h,
                borderRadius: Layouts.kSecondaryBorderRadius),
            10.w.hSpace,
            InkWell(
              onTap: () {},
              child: Container(
                width: 80.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: AppColors.kCheckBoxBorderColor,
                    borderRadius: Layouts.kSecondaryBorderRadius),
                child: const Center(
                  child: CustomSvgIcon(iconPath: AppAssets.gallerAddIcon),
                ),
              ),
            ),
            10.h.vSpace,
          ],
        ),
        Row(
          children: [
            BlocBuilder<AddRatingCubit, AddRatingState>(
              builder: (context, state) {
                return InkWell(
                    onTap: () => BlocProvider.of<AddRatingCubit>(context)
                        .changeHideIdentityCheck(state.hideIdentity!),
                    child: CustomCheckBox(isActive: state.hideIdentity!));
              },
            ),
            10.w.hSpace,
            Text(
              'هل تريد اخفاء هويتك',
              style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.kSubHeadingsTextColor),
            ),
          ],
        ),
      ],
    );
  }
}
