import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/widgets/custom_app_bar.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/terms_and_conditions_dialog.dart';
import 'package:e_printer/features/client/Authentication/presentation/widgets/drop_down_text_field.dart';
import 'package:e_printer/features/client/Authentication/presentation/widgets/or_divider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/styles/text_styles.dart';
import '../../../../../core/utils/widgets/app_button.dart';
import '../../../../../core/utils/widgets/app_text_field.dart';
import '../widgets/login_with_container.dart';
import '../widgets/password_validation_coulmn.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ListView(
            children: [
              const VerticalSpacer(space: 18),
              const GeneralAppBar(title: "Register Page"),
              const VerticalSpacer(space: 20),
              const Row(
                children: [
                  Expanded(
                    child: AppTextField(
                        label: 'First Name',
                        suffixIcon: Icons.person_2_rounded),
                  ),
                  HorizontalSpacer(space: 12),
                  Expanded(
                    child: AppTextField(
                        label: 'Last Name', suffixIcon: Icons.person_2_rounded),
                  ),
                ],
              ),
              const VerticalSpacer(space: 10),
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
              const VerticalSpacer(space: 10),
              AppButton(
                text: "Register",
                onTap: () {
                  showTermsAndConditionsDialog(context, false);
                },
              ),
              const VerticalSpacer(space: 14),
              const OrDivider(),
              const VerticalSpacer(space: 14),
              const LogInWithContainer(
                  label: "Register With Gmail",
                  color: Colors.red,
                  imagePath: AssetsConstants.gmailIcon),
              const LogInWithContainer(
                label: "Register With IOS",
                imagePath: AssetsConstants.iosIcon,
              ),
              const VerticalSpacer(space: 12),
            ],
          ),
        ),
      ),
    );
  }
}
