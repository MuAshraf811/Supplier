import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/color_consatnts.dart';
import '../../../../core/utils/widgets/spacers.dart';

class SectionGridItem extends StatelessWidget {
  const SectionGridItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.descrption,
  });
  final String imagePath;
  final String title;
  final String descrption;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      // height: 200.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConsatnts.primary,
          ),
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        children: [
          Container(
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagePath),
              ),
            ),
          ),
          const VerticalSpacer(space: 6),
          Text(
            title,
            style: applySemiBoldStyle(
                fontSize: 17, fontColor: ColorConsatnts.black),
          ),
          Divider(
            color: ColorConsatnts.primary,
            endIndent: 24.w,
            indent: 20.w,
            thickness: 1,
            height: 12,
          ),
          Text(
            descrption,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
