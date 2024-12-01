import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/app_text_field.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:e_printer/features/client/orders/presentation/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showQuotationDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    barrierColor: Colors.black12,
    backgroundColor: Colors.black12,
    isDismissible: false,
    useRootNavigator: true,
    constraints: BoxConstraints(
      maxHeight: 700.h,
    ),
    builder: (context) => Scaffold(
      backgroundColor: Colors.black12,
      body: BlocProvider<OrdersCubit>(
        create: (context) => OrdersCubit(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
          decoration: BoxDecoration(
            color: ColorConsatnts.white,
            borderRadius: BorderRadius.circular(
              4.r,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quotation ",
                    style: applySemiBoldStyle(
                        fontSize: 16, fontColor: ColorConsatnts.red),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: ColorConsatnts.red.withOpacity(0.2),
                        radius: 11.w,
                        child: const SvgHandler(
                          imagePath: AssetsConstants.wrongIcon,
                          height: 8,
                          width: 8,
                          color: ColorConsatnts.red,
                        ),
                      ))
                ],
              ),
              const VerticalSpacer(space: 18),
              Text(
                "Please Fill This Fields",
                style: applyMediumStyle(
                    fontSize: 16, fontColor: ColorConsatnts.black),
              ),
              const VerticalSpacer(space: 12),
              const AppTextField(
                label: " Order Description",
                suffixIcon: Icons.article,
                minLines: 3,
                maxLines: 8,
                suffixColor: ColorConsatnts.primary,
                suffixSize: 22,
              ),
              const VerticalSpacer(space: 10),
              const TextWithTextField(
                text: "Quantity",
                label: "Quantity",
                icon: Icons.attach_money_outlined,
              ),
              const VerticalSpacer(space: 10),
              const TextWithTextField(
                text: "Rate",
                label: "Rate",
                icon: Icons.production_quantity_limits,
              ),
              const VerticalSpacer(space: 10),
              const TextWithTextField(
                text: "Amount",
                label: "Amount",
                icon: Icons.monetization_on,
              ),
              const VerticalSpacer(space: 10),
              const TextWithTextField(
                text: "vat 5%",
                label: "vat 5%",
                icon: Icons.percent_outlined,
              ),
              const VerticalSpacer(space: 10),
              const TextWithTextField(
                text: "Total",
                label: "Total ",
                icon: Icons.money,
              ),
              const VerticalSpacer(space: 10),
              const QuotationTermsAndCondition(),
              const VerticalSpacer(space: 8),
              AppButton(
                text: "Add Quote",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class TextWithTextField extends StatelessWidget {
  const TextWithTextField({
    super.key,
    required this.text,
    required this.label,
    required this.icon,
    this.conroller,
  });
  final String text;
  final String label;
  final IconData icon;
  final TextEditingController? conroller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style:
              applySemiBoldStyle(fontSize: 15, fontColor: ColorConsatnts.black),
        ),
        SizedBox(
          width: 220.w,
          child: AppTextField(
            label: label,
            suffixIcon: icon,
            controller: conroller,
            suffixSize: 22,
            suffixColor: ColorConsatnts.grey,
          ),
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

class QuotationTermsAndCondition extends StatelessWidget {
  const QuotationTermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Terms and Conditions :',
            style: applyBoldStyle(fontSize: 18, fontColor: ColorConsatnts.red)),
        const VerticalSpacer(space: 4),
        Text('VALIDITY: 10 DAYS FROM ABOVE DATE',
            style:
                applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black)),
        Text(
            'NOTE: AMOUNT PAYMENT 50% IN ADVANCE AND 50% CASH ON DATE OF RECEIVED.',
            style:
                applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.black)),
        Text(
            'SOME TYPE OF ORDERS THAT ARE 10% MORE OR 10% LESS THAN THE QUANTITY QUOTED WILL BE INVOICED AT THE TIME THE ORDER IS COMPLETED AND WILL BE ADDED OR DEDUCTED FROM THE TOTAL AMOUNT REMAINING.',
            style: applyMediumStyle(
                fontSize: 15, fontColor: ColorConsatnts.black)),
        const VerticalSpacer(space: 4),
        Text('Quotes Terms & Conditions : ',
            style: applyBoldStyle(fontSize: 16, fontColor: ColorConsatnts.red)),
        const VerticalSpacer(space: 4),
        for (var i = 1; i <= 7; i++)
          Text('$i- ${AppConst.getQuotationConditionText(i)}',
              style: applySemiBoldStyle(
                  fontSize: 15, fontColor: ColorConsatnts.black)),
      ],
    );
  }
}
