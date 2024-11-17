import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidationItem extends StatelessWidget {
  const PasswordValidationItem({
    super.key,
    required this.validationText,
  });
  final String validationText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 3.w,
          backgroundColor: ColorConsatnts.grey,
        ),
        const HorizontalSpacer(space: 8),
        Text(
          validationText,
          style: applySemiBoldStyle(
                  fontSize: 14, fontColor: ColorConsatnts.lightBlack)
              .copyWith(
            decoration: TextDecoration.lineThrough,
          ),
        )
      ],
    );
  }
}
