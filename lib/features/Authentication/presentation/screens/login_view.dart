import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/Authentication/presentation/widgets/login_with_container.dart';
import 'package:e_printer/features/Authentication/presentation/widgets/or_divider.dart';
import 'package:e_printer/features/Authentication/presentation/widgets/register_question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/widgets/app_button.dart';
import '../../../../core/utils/widgets/app_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const VerticalSpacer(space: 28),
            Text(
              "LogIn Page",
              style: applySemiBoldStyle(
                  fontSize: 18, fontColor: ColorConsatnts.black),
            ),
            const VerticalSpacer(space: 24),
            Text(
              "Hello again ! Let's log you in.",
              style: applySemiBoldStyle(
                  fontSize: 18, fontColor: ColorConsatnts.lightBlack),
            ),
            const VerticalSpacer(space: 28),
            const AppTextField(
              label: "examole12@email.com",
              suffixIcon: Icons.email_rounded,
            ),
            const VerticalSpacer(space: 14),
            const AppTextField(
              label: "Enter Your Password",
              suffixIcon: Icons.remove_red_eye_rounded,
            ),
            const VerticalSpacer(space: 8),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteConstants.forgetPasswordView);
                  },
                  child: Text(
                    "Forget Password?",
                    style: applySemiBoldStyle(
                        fontSize: 14, fontColor: ColorConsatnts.primary),
                  ),
                ),
              ),
            ),
            const VerticalSpacer(space: 24),
            AppButton(
              text: "LogIn",
              onTap: () {
                Navigator.popAndPushNamed(context, RouteConstants.homePage);
              },
            ),
            const VerticalSpacer(space: 16),
            const RegisterQuestion(),
            const VerticalSpacer(space: 32),
            const OrDivider(),
            const VerticalSpacer(space: 24),
            const LogInWithContainer(
              label: "LogIn with Gmail",
              imagePath: AssetsConstants.gmailIcon,
              color: Colors.red,
            ),
            const LogInWithContainer(
              label: "LogIn with apple",
              imagePath: AssetsConstants.iosIcon,
            ),
          ],
        ),
      ),
    );
  }
}
