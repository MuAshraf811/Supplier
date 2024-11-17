import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/chat/presentation/widgets/chat_app_bar.dart';
import 'package:e_printer/features/client/home/presentatoin/screens/detailed_category_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacer(space: 16),
              const CustomAppbar(title: "Filter Page"),
              const VerticalSpacer(space: 16),
              Text(
                "Filter Orders Page By :",
                style: applySemiBoldStyle(
                    fontSize: 16, fontColor: ColorConsatnts.primary),
              ),
              const VerticalSpacer(space: 20),
              const CustomCheck(title: "Printing Products"),
              const VerticalSpacer(space: 8),
              const CustomCheck(title: "Packaging Products"),
              const VerticalSpacer(space: 8),
              const CustomCheck(title: "GiftItems Products"),
              const VerticalSpacer(space: 8),
              const CustomCheck(title: "Uniform Products"),
              const VerticalSpacer(space: 8),
              const CustomCheck(title: "Signatge Products"),
              const VerticalSpacer(space: 8),
              const CustomCheck(title: "Digital Fast Print Products"),
              const VerticalSpacer(space: 18),
              AppButton(text: "Filter", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
