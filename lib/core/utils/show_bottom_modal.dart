import 'package:flutter/material.dart';

import '../theme/styles.dart';

void showCustomBottomModal(Widget child, BuildContext context) =>
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape:
          RoundedRectangleBorder(borderRadius: Layouts.kSecondaryBorderRadius),
      builder: (BuildContext context) {
        return child;
      },
    );
