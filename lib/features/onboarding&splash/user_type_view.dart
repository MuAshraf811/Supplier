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
          child: ListView(
            children: [
              Transform.translate(
                offset: Offset(0, -72.h),
                child: const LogoAnimation(),
              ),
              const VerticalSpacer(space: 30),
              Text(
                "REGISTRATION ROLE",
                textAlign: TextAlign.center,
                style: applySemiBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.black,
                ),
              ),
              const VerticalSpacer(space: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoleContainer(
                    onTap: () {
                      Navigator.popAndPushNamed(
                          context, RouteConstants.logInView);
                    },
                    title: 'FIND SUPPLIER',
                    discription: '(Person / Company)',
                    imagePath: 'assets/images/icons8-search-64.png',
                  ),
                  const HorizontalSpacer(space: 18),
                  RoleContainer(
                    onTap: () {},
                    title: "I AM A SUPPLIER",
                    discription: '(Printing Press / Company / Agency).',
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
