import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/app_text_field.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/Authentication/presentation/controllers/auth/authentication_cubit.dart';
import 'package:e_printer/features/client/Authentication/presentation/widgets/login_with_container.dart';
import 'package:e_printer/features/client/Authentication/presentation/widgets/or_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/widgets/snack_bar.dart';
import '../widgets/register_question.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Form(
          key: context.read<AuthenticationCubit>().logInFormKey,
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
              AppTextField(
                label: "examole12@email.com",
                type: TextInputType.emailAddress,
                suffixIcon: Icons.email_rounded,
                controller:
                    context.read<AuthenticationCubit>().emailLogInController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "This Field Shouldn't be empty";
                  }
                  return null;
                },
              ),
              const VerticalSpacer(space: 14),
              StatefulBuilder(
                builder: (context, changeState) {
                  return AppTextField(
                    label: "Enter Your Password",
                    type: TextInputType.visiblePassword,
                    isSecured:   context.read<AuthenticationCubit>().isTextSecure, 
                    maxLines: 1, 
                    minLines: 1,
                    suffixIcon: Icons.remove_red_eye_rounded,
                    suffixSvg: InkWell(
                      onTap: () {
                        changeState(() {
                            context.read<AuthenticationCubit>().isTextSecure = !  context.read<AuthenticationCubit>().isTextSecure;
                        });
                      },
                      child: Icon(
                        !context.read<AuthenticationCubit>().isTextSecure
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined, 
                            color: ColorConsatnts.primary,
                      ),
                    ),
                    controller: context
                        .read<AuthenticationCubit>()
                        .passwordLogInController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This Field Shouldn't be empty";
                      }
                      return null;
                    },
                  );
                },
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
              BlocConsumer<AuthenticationCubit, AuthenticationState>(
                listenWhen: (previous, current) =>
                    current is SuccessLogInWithEmailState ||
                    current is ErrorLogInWithEmailState ||
                    current is LoadingLogInWithEmailState,
                buildWhen: (previous, current) =>
                    current is SuccessLogInWithEmailState ||
                    current is ErrorLogInWithEmailState ||
                    current is LoadingLogInWithEmailState,
                listener: (context, state) {
                  if (state is ErrorLogInWithEmailState) {
                    showCustomSnackBar(context, state.error, Colors.red,
                        duration: 8);
                  }
                  if (state is SuccessLogInWithEmailState) {
                    Navigator.pushReplacementNamed(
                        context, RouteConstants.homePage);
                  }

                  if (state is SuccessLogInWithEmailState) {
                    showCustomSnackBar(context, "Successful Registeration ",
                        ColorConsatnts.primary);
                  }
                },
                builder: (context, state) {
                  if (state is LoadingLogInWithEmailState) {
                    return Container(
                      width: double.infinity,
                      height: 38.h,
                      decoration: BoxDecoration(
                          color: ColorConsatnts.primary,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Center(
                        child: Transform.scale(
                          scale: 0.7,
                          child: const CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    );
                  }
                  return AppButton(
                    text: "LogIn",
                    onTap: () {
                      if (context
                          .read<AuthenticationCubit>()
                          .logInFormKey
                          .currentState!
                          .validate()) {
                        context.read<AuthenticationCubit>().logInWithEmail();
                      }
                    },
                  );
                },
              ),
              const VerticalSpacer(space: 16),
              const RegisterQuestion(),
              const VerticalSpacer(space: 32),
              const OrDivider(),
              const VerticalSpacer(space: 24),
              BlocConsumer<AuthenticationCubit, AuthenticationState>(
                listenWhen: (previous, current) =>
                    current is SuccessLogInWithGoogleState ||
                    current is ErrorLogInWithGoogleState ||
                    current is LoadingLogInWithGoogleState,
                buildWhen: (previous, current) =>
                    current is SuccessLogInWithGoogleState ||
                    current is LoadingLogInWithGoogleState ||
                    current is ErrorLogInWithGoogleState,
                listener: (context, state) {
                  if (state is ErrorLogInWithGoogleState) {
                    showCustomSnackBar(context, state.error, Colors.red,
                        duration: 8);
                  }
                  if (state is SuccessLogInWithGoogleState) {
                    showCustomSnackBar(
                        context, 'WElcome', ColorConsatnts.primary,
                        duration: 8);
                    Navigator.pushReplacementNamed(
                        context, RouteConstants.homePage);
                  }
                },
                builder: (context, state) {
                  if (state is LoadingLogInWithGoogleState) {
                    return Container(
                      width: double.infinity,
                      height: 38.h,
                      decoration: BoxDecoration(
                          color: ColorConsatnts.white,
                          border: Border.all(color: ColorConsatnts.primary),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Center(
                        child: Transform.scale(
                          scale: 0.7,
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: ColorConsatnts.white,
                            valueColor: AlwaysStoppedAnimation(
                                ColorConsatnts.primary.withOpacity(0.85)),
                          ),
                        ),
                      ),
                    );
                  }
                  return InkWell(
                    onTap: () {
                      context.read<AuthenticationCubit>().registerWithgoogle();
                    },
                    child: const LogInWithContainer(
                      label: "LogIn With Gmail",
                      color: Colors.red,
                      imagePath: AssetsConstants.gmailIcon,
                    ),
                  );
                },
              ),
              const LogInWithContainer(
                label: "LogIn with apple",
                imagePath: AssetsConstants.iosIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
