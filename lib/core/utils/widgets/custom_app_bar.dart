import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 8.0.w),
            child: const SvgHandler(
              imagePath: AssetsConstants.arrowLeftIcon,
              height: 20,
              width: 20,
            ),
          ),
        ),
        const Spacer(),
        Text(
          title,
          style: applyBoldStyle(fontSize: 18, fontColor: ColorConsatnts.black),
        ),
        const Spacer(),
      ],
    );
  }
}
