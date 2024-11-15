import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.suffixIcon,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.type,
    this.maxLines,
    this.minLines,
    this.maxHeight,
    this.suffixColor,
    this.suffixSize,
  });
  final String label;
  final IconData suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final TextInputType? type;
  final int? maxLines;
  final int? minLines;
  final double? maxHeight;
  final double? suffixSize;

  final Color? suffixColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: type,
      maxLines: maxLines,
      minLines: minLines,
      autocorrect: true,
      scribbleEnabled: true,
      style: applySemiBoldStyle(
        fontSize: 16,
        fontColor: ColorConsatnts.black,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 10.h, left: 8.w),
        constraints: BoxConstraints(maxHeight: maxHeight ?? 48.h),
        prefixIcon: prefixIcon,
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Icon(
            suffixIcon,
            size: suffixSize ?? 24,
            color: suffixColor ?? ColorConsatnts.primary,
          ),
        ),
        label: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            label,
            style: applyMediumStyle(
              fontSize: 14,
              fontColor: ColorConsatnts.grey,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: ColorConsatnts.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: ColorConsatnts.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: ColorConsatnts.primary,
          ),
        ),
      ),
    );
  }
}
