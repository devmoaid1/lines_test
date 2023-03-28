import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/constants/app_assets.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/theme/styles.dart';
import 'package:lines_test/core/widgets/custom_svg_icon.dart';

class ProductWholeSalePricesSection extends StatelessWidget {
  const ProductWholeSalePricesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      decoration: BoxDecoration(
          borderRadius: Layouts.kDefaultBorderRadius,
          color: AppColors.kCardBackgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          13.h.vSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'اسعار الجملة',
                style: context.theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kHeadingsTextColor),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.kHeadingsTextColor,
                size: 25.h,
              )
            ],
          ),
          SizedBox(
            height: 215.h,
            child: DataTable(
              dividerThickness: 2,
              horizontalMargin: 0,
              dataTextStyle: context.theme.textTheme.bodyMedium!
                  .copyWith(color: AppColors.kSubHeadingsTextColor),
              columns: const [
                DataColumn(label: Text('الكمية/القطعة')),
                DataColumn(label: Text('السعر')),
                DataColumn(label: Text('الخصم المستحق')),
              ],
              rows: [
                const DataRow(cells: [
                  DataCell(Center(child: Text('1-10'))),
                  DataCell(Center(child: Text('10 ر.س'))),
                  DataCell(Center(child: Text('30%'))),
                ]),
                const DataRow(cells: [
                  DataCell(Center(child: Text('1-10'))),
                  DataCell(Center(child: Text('10 ر.س'))),
                  DataCell(Center(child: Text('30%'))),
                ]),
                DataRow(cells: [
                  DataCell(Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomSvgIcon(iconPath: AppAssets.infinityIcon),
                      3.w.hSpace,
                      const Text('-1'),
                    ],
                  )),
                  const DataCell(Center(child: Text('10 ر.س'))),
                  const DataCell(Center(child: Text('30%'))),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
