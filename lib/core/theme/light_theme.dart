import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lines_test/core/theme/app_colors.dart';
import 'package:lines_test/core/theme/styles.dart';

final textTheme = TextTheme(
    headlineLarge: Styles.kBodyHeadlineTextStyle,
    headlineMedium: Styles.kBodyExtraLargeTextStyle,
    bodyLarge: Styles.kBodyLargeTextStyle,
    bodyMedium: Styles.kBodyMediumTextStyle,
    bodySmall: Styles.kBodySmallTextStyle,
    labelSmall: Styles.kBodyExtraSmallTextStyle);

final eleveatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all(TextStyle(
        fontSize: 18.sp,
        fontFamily: 'DIN',
        color: Colors.white,
        fontWeight: FontWeight.w500)),
    padding: MaterialStateProperty.all(Layouts.kButtonPadding),
    minimumSize: MaterialStateProperty.all(const Size(210, 48)),
    backgroundColor: MaterialStateProperty.all(AppColors.kAppPrimaryColor),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: Layouts.kDefaultBorderRadius,
    )),
  ),
);

final lightTheme = ThemeData(
    fontFamily: 'DIN',
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme,
    elevatedButtonTheme: eleveatedButtonTheme,
    dividerTheme:
        const DividerThemeData(color: AppColors.kDividerColor, thickness: 1));
