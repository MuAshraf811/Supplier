import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/constants/packaging_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/chat/presentation/widgets/chat_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedPackagingView extends StatelessWidget {
  const DetailedPackagingView(
      {super.key,
      required this.packageItemIndex,
      required this.itemTitle,
      required this.innerIndex});
  final int packageItemIndex;
  final String itemTitle;
  final int innerIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacer(space: 16),
              const CustomAppbar(title: "Packaging View"),
              const VerticalSpacer(space: 12),
              Text(
                itemTitle,
                style:
                    applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.red),
              ),
              const VerticalSpacer(space: 12),
              Expanded(
                child: GridView.builder(
                  itemCount: PackagingConstants.showPackagingItems(
                          loopIndex: 0, innerIndex: innerIndex)[packageItemIndex]
                      .length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 1.w / 1.4.h,
                      crossAxisSpacing: 10.w),
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      color: ColorConsatnts.white,
                      border:
                          Border.all(color: ColorConsatnts.grey, width: 0.5.h),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(
                            color: ColorConsatnts.grey.withOpacity(0.5),
                            blurRadius: 2.w,
                            spreadRadius: 1,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(1.5.w, 2.5.h)),
                      ],
                    ),
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
                              image: AssetImage(
                                  PackagingConstants.showPackagingItems(
                                              loopIndex: index + 1,
                                              innerIndex: innerIndex)[packageItemIndex]
                                          [index]
                                      .image),
                            ),
                          ),
                        ),
                        const VerticalSpacer(space: 26),
                        Text(
                          PackagingConstants.showPackagingItems(
                                  loopIndex: index,
                                  innerIndex: innerIndex)[packageItemIndex][index]
                              .title,
                          textAlign: TextAlign.center,
                          style: applySemiBoldStyle(
                              fontSize: 16, fontColor: ColorConsatnts.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
