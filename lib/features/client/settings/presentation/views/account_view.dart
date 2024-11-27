import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/widgets/app_text_field.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/chat/presentation/widgets/chat_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/styles/text_styles.dart';
import '../../../../../core/utils/widgets/app_button.dart';
import '../../../Authentication/presentation/widgets/drop_down_text_field.dart';
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: ListView(
            children: [
              const VerticalSpacer(space: 32),
              const CustomAppbar(title: "Account View"),
              const VerticalSpacer(space: 12),
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
                label: "Mobile Number",
                type: TextInputType.phone,
                suffixIcon: Icons.phone_android_outlined,
              ),
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
              const VerticalSpacer(space: 48),
              AppButton(
                text: "Change Password",
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteConstants.changePasswordView);
                },
              ),
              const VerticalSpacer(space: 12),
              AppButton(
                text: "Update Information",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              const VerticalSpacer(space: 32),
              const CustomAppbar(title: "Change Password View"),
              const VerticalSpacer(space: 16),
              const AppTextField(
                  label: "Enter Old Password",
                  suffixIcon: Icons.remove_red_eye),
              const VerticalSpacer(space: 6),
              const AppTextField(
                  label: "Enter New Password",
                  suffixIcon: Icons.remove_red_eye),
              const VerticalSpacer(space: 6),
              //const PasswordValidationPart(),
              const VerticalSpacer(space: 10),
              const AppTextField(
                  label: "Confirm New Password",
                  suffixIcon: Icons.remove_red_eye_rounded),
              const VerticalSpacer(space: 16),
              AppButton(text: "Change", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
