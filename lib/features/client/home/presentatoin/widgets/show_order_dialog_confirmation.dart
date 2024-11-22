import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showOrderConfirmation(
    {required BuildContext context,
    required String title,
    required String date,
    required String description}) {
  showDialog(
    context: context,
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: ColorConsatnts.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Text(
            title,
            style:
                applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black),
          ),
          const VerticalSpacer(space: 12), 
           Text(
            date,
            style:
                applyMediumStyle(fontSize: 14, fontColor: ColorConsatnts.primary),
          ), 
          const VerticalSpacer(space: 12), 
           Text(
            description,
            style:
                applyMediumStyle(fontSize: 14, fontColor: ColorConsatnts.primary,),
          ),
        ],
      ),
    ),
  );
}
