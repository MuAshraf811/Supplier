import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 40.h,
        decoration: BoxDecoration(
          color: ColorConsatnts.primary,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text(
          text,
          style: applySemiBoldStyle(
            fontSize: 16,
            fontColor: ColorConsatnts.white,
          ),
        ),
      ),
    );
  }
}
