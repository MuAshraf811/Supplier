import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpacer(space: 16),
          Text(
            "Your Order Summary :",
            style:
                applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black),
          ),
          const VerticalSpacer(space: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => OrderItem(
                index: index + 1,
                orderName: "Offset Print",
                orderDetails:
                    "This is Details , This is Details,  This is Details  This is Details  This is Details  This is Details  This is Details  This is Details  This is Details",
                orderDescription:
                    "This is Details , This is Details,  This is Details  This is Details  This is Details  This is Details  This is Details  This is Details  This is Details",
              ),
            ),
          ),
          const VerticalSpacer(space: 12),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.index,
    required this.orderName,
    required this.orderDetails,
    required this.orderDescription,
  });
  final int index;
  final String orderName;
  final String orderDetails;
  final String orderDescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 16.h),
      margin: EdgeInsets.only(bottom: 18.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConsatnts.grey),
          borderRadius: BorderRadius.circular(12.r)),
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
                    BorderRadius.only(topLeft: Radius.circular(12.r))),
            child: Text(
              index.toString(),
              style: applyMediumStyle(
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
          Padding(
            padding: EdgeInsets.only(right: 24.w, top: 16.h),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgHandler(
                  imagePath: AssetsConstants.editIcon,
                  height: 24,
                  width: 24,
                  color: Colors.green,
                ),
                HorizontalSpacer(space: 20),
                SvgHandler(
                  imagePath: AssetsConstants.deleteIcon,
                  height: 24,
                  width: 24,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1.h,
          width: 80.w,
          color: ColorConsatnts.grey,
        ),
        const HorizontalSpacer(space: 6),
        Text(
          text,
          style:
              applyRegularStyle(fontSize: 14, fontColor: ColorConsatnts.grey),
        ),
        const HorizontalSpacer(space: 6),
        Container(
          height: 1.h,
          width: 80.w,
          color: ColorConsatnts.grey,
        ),
      ],
    );
  }
}
