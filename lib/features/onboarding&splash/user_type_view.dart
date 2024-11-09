import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/onboarding&splash/widgets/logo_animation.dart';
import 'package:e_printer/features/onboarding&splash/widgets/role_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTypeView extends StatelessWidget {
  const UserTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, -72.h),
                child: const LogoAnimation(),
              ),
              Text(
                "Supplier.",
                style: applyBoldStyle(
                  fontSize: 20,
                  fontColor: ColorConsatnts.primary,
                ),
              ),
              const VerticalSpacer(space: 6),
              Text(
                "Your Wanted Services On Demand.",
                textAlign: TextAlign.center,
                style: applyBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.grey,
                ),
              ),
              const VerticalSpacer(space: 30),
              Text(
                "Choose Your Role :",
                textAlign: TextAlign.center,
                style: applyBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.black,
                ),
              ),
              const VerticalSpacer(space: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoleContainer(
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, RouteConstants.logInView);
                    },
                    title: 'Find a Service',
                    discription: 'I\'m looking for people to do me a Service.',
                    imagePath: 'assets/images/icons8-search-64.png',
                  ),
                  const HorizontalSpacer(space: 18),
                  RoleContainer(
                    onTap: () {},
                    title: 'Selling Service\n (Company)',
                    discription: 'I\'d like to offer my Services.',
                    imagePath: 'assets/images/icons8-task-48.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
