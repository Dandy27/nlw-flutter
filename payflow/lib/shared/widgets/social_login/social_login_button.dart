import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_collors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_style.dart';

class SocialLoginbutton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginbutton({
    Key? key, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        height: 56,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(AppImages.google),
            ),
            Container(
              height: 56,
              width: 1,
              color: AppColors.stroke,
            ),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Entrar com Google',
                      style: TextStyles.buttonBoldGrey,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
