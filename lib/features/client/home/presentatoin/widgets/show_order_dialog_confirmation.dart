import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showOrderConfirmation({
  required BuildContext context, 
  required String orderCategory,
  required String orderType,
  required String orderDate,
  required String details, 
  required String extraDetails
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    barrierColor: Colors.black12,
    backgroundColor: Colors.black12, 
    isDismissible: false, 
    useRootNavigator: true,
    constraints: BoxConstraints(maxHeight: 500.h),
    builder: (context) => Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.h),
        // margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        decoration: BoxDecoration(
          color: ColorConsatnts.white,
          borderRadius: BorderRadius.circular(
            4.r,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: ColorConsatnts.white,
                      border: Border.all(color: ColorConsatnts.primary),
                      borderRadius: BorderRadius.circular(28.r)),
                  child: Text(
                    "Order Summary",
                    style: applyBoldStyle(
                        fontSize: 16, fontColor: ColorConsatnts.black),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: ColorConsatnts.red.withOpacity(0.15),
                    radius: 10.w,
                    child: const SvgHandler(
                      imagePath: AssetsConstants.wrongIcon,
                      height: 8,
                      width: 8,
                      color: ColorConsatnts.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
              margin: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                color: ColorConsatnts.white,
                border: Border.all(color: ColorConsatnts.primary, width: 0.5.h),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWithValueText(title: "Category Name", value: orderCategory),
                  const CustomDivider(),
                  TitleWithValueText(title: "Order Name", value: orderType),
                  const CustomDivider(),
                  TitleWithValueText(title: "Date", value: orderDate),
                  const CustomDivider(),
                  Text(
                    "Order Details :",
                    style: applyBoldStyle(
                      fontSize: 16,
                      fontColor: ColorConsatnts.primary,
                    ),
                  ),
                  const VerticalSpacer(space: 8),
                  Text(
                    details,
                    style: applyMediumStyle(
                      fontSize: 15,
                      fontColor: ColorConsatnts.black,
                    ),
                  ), 
                   const CustomDivider(), 
                    Text(
                    "Extra Details :",
                    style: applyBoldStyle(
                      fontSize: 16,
                      fontColor: ColorConsatnts.primary,
                    ),
                  ),
                  const VerticalSpacer(space: 8),
                  Text(
                    extraDetails,
                    style: applyMediumStyle(
                      fontSize: 15,
                      fontColor: ColorConsatnts.black,
                    ),
                  ), 

                ],
              ),
            ),
            AppButton(
                text: "Confirm",
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    ),
  );
}

class TitleWithValueText extends StatelessWidget {
  const TitleWithValueText(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              applySemiBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black),
        ),
        Text(
          value,
          style:
              applySemiBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black),
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: 24.w,
      indent: 24.w,
      thickness: 0.5.h,
      color: ColorConsatnts.grey,
      height: 28.h,
    );
  }
}
