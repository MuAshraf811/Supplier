import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/orders/presentation/widget/divider_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupplierOrderItem extends StatelessWidget {
  const SupplierOrderItem({
    super.key,
    required this.index,
    required this.orderName,
    required this.orderDetails,
    required this.orderDescription, 
    required this.orderDate,
  });
  final int index;
  final String orderName;
  final String orderDetails;
  final String orderDescription; 
  final String orderDate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 16.h),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConsatnts.grey),
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 24.w,
            height: 18.h,
            decoration: BoxDecoration(
                color: ColorConsatnts.primary,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(10.r))),
            child: Text(
              index.toString(),
              style: applyBoldStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              orderName,
              style: applyBoldStyle(
                fontSize: 16,
                fontColor: ColorConsatnts.primary,
              ),
            ),
          ),
          const VerticalSpacer(space: 8),
          const DividerWithText(text: "Order Details"),
          const VerticalSpacer(space: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              orderDetails,
              textAlign: TextAlign.center,
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.black,
              ),
            ),
          ),
          const VerticalSpacer(space: 8),
          const DividerWithText(text: "Order Description"),
          const VerticalSpacer(space: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              orderDescription,
              textAlign: TextAlign.center,
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.black,
              ),
            ),
          ),
          const VerticalSpacer(space: 24),
          Padding(
            padding: EdgeInsets.only(left: 12.0.w, right: 14.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  text: "Make Offer",
                  textColor: ColorConsatnts.primary,
                  color: ColorConsatnts.white,
                  fontSize: 16,
                  width: 160.w,
                  onTap: () {},
                ),
                Text(
                orderDate,
                  style: applyMediumStyle(
                    fontSize: 14,
                    fontColor: ColorConsatnts.lightBlack,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

