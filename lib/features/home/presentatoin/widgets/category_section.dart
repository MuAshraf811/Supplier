import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_const.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.w),
      child: SizedBox(
        height: 40.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) => InkWell(
            onTap: () {},
            child: Container(
              height: 36.h,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
              margin: EdgeInsets.only(right: 6.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: ColorConsatnts.primary,
              ),
              child: Text(
                AppConst.homeCategoryStrings[index],
                style: applyMediumStyle(
                  fontColor: ColorConsatnts.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
