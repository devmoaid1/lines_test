import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/extensions/app_context.dart';
import 'package:lines_test/core/extensions/spaces.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class ProductWholeSaleTable extends StatelessWidget {
  const ProductWholeSaleTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      dividerThickness: 2,
      horizontalMargin: 0,
      headingTextStyle: context.theme.textTheme.bodyMedium!
          .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      dataTextStyle: context.theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w400, color: AppColors.kSubHeadingsTextColor),
      columnSpacing: 48.w,
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
    );
  }
}
