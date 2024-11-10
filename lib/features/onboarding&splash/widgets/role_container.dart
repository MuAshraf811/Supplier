import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/styles/text_styles.dart';

class RoleContainer extends StatelessWidget {
  const RoleContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.discription,
    required this.onTap,
  });
  final String imagePath;
  final String title;
  final String discription;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140.w,
        height: 160.h,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConsatnts.black),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style:
                  applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                discription,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: applySemiBoldStyle(
                    fontSize: 12, fontColor: ColorConsatnts.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
