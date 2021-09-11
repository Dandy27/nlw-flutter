import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_collors.dart';
import 'package:payflow/shared/themes/app_text_style.dart';

import '../divider_vertical/divider_vertical.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primarylabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final bool enablePrimaryColor;
  final VoidCallback secondaryOnPressed;
  const SetLabelButtons({
    Key? key,
    required this.primarylabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            label: primarylabel,
            onPressed: primaryOnPressed,
            style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
          )),
          DividerVertical(),
          Expanded(
              child: LabelButton(
            label: secondaryLabel,
            onPressed: secondaryOnPressed,
          )),
        ],
      ),
    );
  }
}
