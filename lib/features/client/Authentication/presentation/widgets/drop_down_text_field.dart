import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownWithTextField extends StatelessWidget {
  const DropDownWithTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      onChanged: (value) {},
      borderRadius: BorderRadius.circular(12.r),
      dropdownColor: ColorConsatnts.white,
      iconEnabledColor: ColorConsatnts.primary,
      iconSize: 24.w,
      menuMaxHeight: 400.h,
      isExpanded: false,
      isDense: true,
      decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                width: 0.5.h,
                color: ColorConsatnts.lightBlack,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                width: 0.5.h,
                color: ColorConsatnts.lightBlack,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                width: 1.h,
                color: ColorConsatnts.lightBlack,
              )),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: ColorConsatnts.primary, width: 0.5),
            borderRadius: BorderRadius.circular(12.r),
          )),
      value: AppConst.uaeCities[1],
      items: AppConst.uaeCities
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: Text(
                e,
                style: applyBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.black,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
