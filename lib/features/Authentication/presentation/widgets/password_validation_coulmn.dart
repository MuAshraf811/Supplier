import 'package:e_printer/features/Authentication/presentation/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidationPart extends StatelessWidget {
  const PasswordValidationPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: const Column(
        children: [
          PasswordValidationItem(validationText: "At least 8 characters"),
          PasswordValidationItem(
            validationText: "At least 1 Uppercase letter (A-Z)",
          ),
          PasswordValidationItem(
            validationText: " At least 1 special Character (!@\$-#/%*^\\)",
          ),
          PasswordValidationItem(
            validationText: "At least 1 number (0-9)",
          ),
        ],
      ),
    );
  }
}
