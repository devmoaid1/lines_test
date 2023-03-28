import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/styles.dart';
import 'package:lines_test/core/widgets/custom_clickable_card.dart';
import 'package:lines_test/core/widgets/sub_heading.dart';

import '../../../../core/theme/app_colors.dart';
import 'add_ons_list_view.dart';

class ProductAddonsSection extends StatefulWidget {
  const ProductAddonsSection({super.key});

  @override
  State<ProductAddonsSection> createState() => _ProductAddonsSectionState();
}

class _ProductAddonsSectionState extends State<ProductAddonsSection> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SubHeading(title: 'يباع معها ايضا'),
            const Spacer(),
            InkWell(
              onTap: () => handleScroll(false, _scrollController),
              child: Icon(Icons.arrow_back_ios,
                  size: 18.h, color: AppColors.kSubHeadingsTextColor),
            ),
            InkWell(
              onTap: () => handleScroll(true, _scrollController),
              child: Icon(Icons.arrow_forward_ios,
                  size: 18.h, color: AppColors.kSubHeadingsTextColor),
            ),
          ],
        ),
        20.h.vSpace,
        Container(
          decoration: BoxDecoration(
              borderRadius: Layouts.kDefaultBorderRadius,
              color: AppColors.kCardBackgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h.vSpace,
              SizedBox(
                height: 140.h,
                child: AddOnsListView(scrollController: _scrollController),
              ),
              20.h.vSpace,
              Padding(
                padding: Layouts.kSecondaryPadding,
                child: CustomClickableCard(
                    child: Text(
                  'تحديد الكل',
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                      color: AppColors.kAppPrimaryColor,
                      fontWeight: FontWeight.w400),
                )),
              ),
              20.h.vSpace,
            ],
          ),
        )
      ],
    );
  }
}

void handleScroll(bool isForward, ScrollController scrollController) {
  scrollController.animateTo(
      isForward
          ? scrollController.position.pixels + 113.w
          : scrollController.position.pixels - 113.w,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease);
}
