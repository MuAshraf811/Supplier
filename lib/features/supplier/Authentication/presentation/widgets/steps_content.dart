import 'package:e_printer/core/utils/native/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/styles/text_styles.dart';
import '../../../../../core/utils/widgets/app_text_field.dart';
import '../../../../../core/utils/widgets/spacers.dart';
import '../../../../../core/utils/widgets/svg_handler.dart';
import '../../../../client/Authentication/presentation/widgets/drop_down_text_field.dart';
import '../../../../client/Authentication/presentation/widgets/password_validation_coulmn.dart';

class StepOneContent extends StatelessWidget {
  const StepOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppTextField(
            label: "Example12@email.com", suffixIcon: Icons.email),
        const VerticalSpacer(space: 10),
        const AppTextField(
            label: "Enter Password", suffixIcon: Icons.remove_red_eye),
        const VerticalSpacer(space: 6),
        const PasswordValidationPart(),
        const VerticalSpacer(space: 10),
        const AppTextField(
            label: "Confirm Password",
            suffixIcon: Icons.remove_red_eye_rounded),
        const VerticalSpacer(space: 10),
        const AppTextField(
            label: "Mobile Number",
            type: TextInputType.phone,
            suffixIcon: Icons.phone_android_outlined),
        const VerticalSpacer(space: 10),
        Row(
          children: [
            Text(
              " City :",
              style: applySemiBoldStyle(
                fontSize: 16,
                fontColor: ColorConsatnts.black,
              ),
            ),
            const HorizontalSpacer(space: 10),
            const Expanded(
              child: DropDownWithTextField(),
            ),
          ],
        ),
        const VerticalSpacer(space: 24),
      ],
    );
  }
}

class StepTwoContent extends StatelessWidget {
  const StepTwoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpacer(space: 16),
        InkWell(
          onTap: () {
            ImagePickerHelper.pick(false);
          },
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 22.h),
            height: 80.h,
            decoration: BoxDecoration(
              border: Border.all(color: ColorConsatnts.primary),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Upload Trade License",
                  style: applySemiBoldStyle(
                    fontSize: 16,
                    fontColor: ColorConsatnts.black,
                  ),
                ),
                const VerticalSpacer(space: 10),
                const SvgHandler(
                    imagePath: "assets/svgs/export2.svg",
                    height: 24,
                    width: 24),
              ],
            ),
          ),
        ),
        const AppTextField(
            label: "Company Name", suffixIcon: Icons.password_sharp),
        const VerticalSpacer(space: 12),
        const AppTextField(
            label: "Tax Number", suffixIcon: Icons.password_sharp),
        const VerticalSpacer(space: 12),
        const AppTextField(
            label: "Bank Name", suffixIcon: Icons.account_balance_outlined),
        const VerticalSpacer(space: 12),
        const AppTextField(
            label: "Ipan Number", suffixIcon: Icons.credit_card_sharp),
        const VerticalSpacer(space: 24),
      ],
    );
  }
}
