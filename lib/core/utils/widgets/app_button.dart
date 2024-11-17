import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.fontSize,
  });
  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        alignment: Alignment.center,
        height: 40.h,
        decoration: BoxDecoration(
          color: ColorConsatnts.primary,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text(
          text,
          style: applySemiBoldStyle(
            fontSize: fontSize ?? 16,
            fontColor: ColorConsatnts.white,
          ),
        ),
      ),
    );
  }
}
