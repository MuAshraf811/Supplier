import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/widgets/spacers.dart';

class SectionGridItem extends StatelessWidget {
  const SectionGridItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });
  final String imagePath;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150.w,
        // height: 200.h,
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorConsatnts.primary.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          children: [
            Container(
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            const VerticalSpacer(space: 26),
            Text(
              title, 
              textAlign: TextAlign.center,
              style: applySemiBoldStyle(
                  fontSize: 16, fontColor: ColorConsatnts.black),
            ),
          ],
        ),
      ),
    );
  }
}
