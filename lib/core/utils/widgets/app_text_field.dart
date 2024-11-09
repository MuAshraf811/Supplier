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
  });
  final String label;
  final IconData suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final TextInputType? type;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: type,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Icon(
            suffixIcon,
            color: ColorConsatnts.primary,
          ),
        ),
        label: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            label,
            style: applySemiBoldStyle(
              fontSize: 15,
              fontColor: ColorConsatnts.lightBlack,
            ),
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
              color: ColorConsatnts.grey,
            )),
      ),
    );
  }
}
