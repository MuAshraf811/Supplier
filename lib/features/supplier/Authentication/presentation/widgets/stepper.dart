import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/features/supplier/Authentication/presentation/widgets/steps_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/styles/text_styles.dart';
import '../../../../../core/utils/widgets/spacers.dart';

class RegisterStepper extends StatefulWidget {
  const RegisterStepper({
    super.key,
  });

  @override
  State<RegisterStepper> createState() => _RegisterStepperState();
}

class _RegisterStepperState extends State<RegisterStepper> {
  int stepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: ColorConsatnts.white),
      child: Stepper(
        controlsBuilder: (context, details) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                text: details.currentStep == 0 ? "Continue" : "Register",
                onTap: () {
                  if (stepIndex == 0) {
                    setState(
                      () {
                        stepIndex++;
                      },
                    );
                  } else {
                    Navigator.pushReplacementNamed(
                        context, RouteConstants.supplierHomeView);
                  }
                },
                width: 100.w,
                raduis: 6.r,
                fontSize: 15,
              ),
              const HorizontalSpacer(space: 12),
              AppButton(
                text: "Cancel",
                raduis: 6.r,
                color: ColorConsatnts.white,
                textColor: ColorConsatnts.primary,
                onTap: () {
                  if (stepIndex == 1) {
                    setState(() {
                      stepIndex--;
                    });
                  }
                },
                width: 80.w,
                fontSize: 15,
              ),
            ],
          );
        },
        connectorColor: const WidgetStatePropertyAll(ColorConsatnts.primary),
        currentStep: stepIndex,
        type: StepperType.horizontal,
        steps: [
          Step(
            state: stepIndex == 1 ? StepState.complete : StepState.indexed,
            stepStyle: StepStyle(
              color: stepIndex == 1 ? Colors.green : ColorConsatnts.primary,
            ),
            title: Text(
              "Main Data",
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.black,
              ),
            ),
            content: const StepOneContent(),
          ),
          Step(
            //  isActive: false,
            state: StepState.disabled,
            stepStyle: StepStyle(
              color: stepIndex == 0
                  ? ColorConsatnts.grey.withOpacity(0.85)
                  : ColorConsatnts.primary,
            ),
            title: Text(
              "Other Data",
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.black,
              ),
            ),
            content: const StepTwoContent(),
          ),
        ],
      ),
    );
  }
}
