import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/assets_constants.dart';
import '../../../../core/utils/constants/color_consatnts.dart';
import '../../../../core/utils/styles/text_styles.dart';
import '../../../../core/utils/widgets/svg_handler.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 12.h, left: 12.w),
      margin: EdgeInsets.only(bottom: 4.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorConsatnts.black,
            width: 0.7.h,
          ),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const SvgHandler(
              imagePath: AssetsConstants.arrowLeftIcon,
              height: 22,
              width: 22,
            ),
          ),
          const Spacer(),
          Text(
            "Supplier Admin",
            style:
                applyBoldStyle(fontSize: 18, fontColor: ColorConsatnts.black),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
