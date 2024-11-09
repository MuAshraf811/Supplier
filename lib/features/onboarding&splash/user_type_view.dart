import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class UserTypeView extends StatelessWidget {
  const UserTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const VerticalSpacer(space: 24),
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
                  const HorizontalSpacer(space: 22),
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

class LogoAnimation extends StatefulWidget {
  const LogoAnimation({
    super.key,
  });

  @override
  State<LogoAnimation> createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation>
    with TickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  @override
  void initState() {
    super.initState();
    _logoAnimationController = AnimationController(vsync: this)
      ..duration = const Duration(seconds: 2)
      ..forward()
      ..repeat();
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    if (kDebugMode) {
      print("Logo Animation controller has been disposed");
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.w,
      child: LottieBuilder.asset(
        "assets/jsons/Supplier Logo Final333-01.json",
        height: 300.h,
        width: 300.w,
        controller: _logoAnimationController,
        frameRate: FrameRate.composition,
        fit: BoxFit.cover,
      ),
    );
  }
}

class RoleContainer extends StatelessWidget {
  const RoleContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.discription,
    required this.onTap,
  });
  final String imagePath;
  final String title;
  final String discription;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140.w,
        height: 160.h,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConsatnts.primary),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: applySemiBoldStyle(
                  fontSize: 15, fontColor: ColorConsatnts.black),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                discription,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: applySemiBoldStyle(
                    fontSize: 13, fontColor: ColorConsatnts.lightBlack),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
