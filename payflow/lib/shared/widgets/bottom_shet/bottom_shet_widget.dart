import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_collors.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottomShetWidget extends StatelessWidget {
  final String primarylabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subTitle;

  const BottomShetWidget(
      {Key? key,
      required this.primarylabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Scaffold(
        body: Container(
          color: AppColors.shape,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.black.withOpacity(0.6),
              )),
              Column(
                children: [
                  buildText(),
                  Container(
                    height: 1,
                    color: AppColors.stroke,
                  ),
                  SetLabelButtons(
                      enablePrimaryColor: true,
                      primarylabel: primarylabel,
                      primaryOnPressed: primaryOnPressed,
                      secondaryLabel: secondaryLabel,
                      secondaryOnPressed: secondaryOnPressed),
                  SizedBox(
                    height: 4,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildText() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Text.rich(
        TextSpan(text: title, style: TextStyles.buttonBoldHeading, children: [
          TextSpan(text: "\n$subTitle", style: TextStyles.buttonHeading)
        ]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
