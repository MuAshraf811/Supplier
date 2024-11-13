import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/app_text_field.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedCategoryItemView extends StatelessWidget {
  const DetailedCategoryItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wrapping Paper",
                style: applySemiBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.primary,
                ),
              ),
              const VerticalSpacer(space: 12),
              const RadioGroupItems(),
              const VerticalSpacer(space: 12),
              const CustomDropDown(
                entries: [25, 30, 35, 40, 45],
                text: "Paper",
              ),
              const VerticalSpacer(space: 8),
              const AppTextField(
                label: "Add some description",
                minLines: 3,
                maxLines: 5,
                suffixIcon: Icons.note_alt,
              ),
              const VerticalSpacer(space: 12),
              const CustomCheck(),
              const VerticalSpacer(space: 12),
              AppButton(
                text: "Add Order",
                onTap: () {},
                width: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.text,
    required this.entries,
  });
  final String text;
  final List entries;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style:
              applySemiBoldStyle(fontSize: 14, fontColor: ColorConsatnts.black),
        ),
        const HorizontalSpacer(space: 16),
        Transform.scale(
          scaleY: 0.8,
          child: DropdownMenu(
              width: 110.w,
              trailingIcon: const Icon(
                Icons.arrow_drop_down,
                size: 24,
              ),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r)),
              ),
              menuStyle: const MenuStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ColorConsatnts.white)),
              initialSelection: entries[0],
              dropdownMenuEntries: entries
                  .map(
                    (e) => DropdownMenuEntry(
                      value: e,
                      label: "$e",
                    ),
                  )
                  .toList()),
        ),
      ],
    );
  }
}

class CustomCheck extends StatefulWidget {
  const CustomCheck({super.key});

  @override
  State<CustomCheck> createState() => _CustomCheckState();
}

class _CustomCheckState extends State<CustomCheck> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.85,
          child: Checkbox(
              value: value,
              activeColor: ColorConsatnts.primary,
              onChanged: (val) {
                setState(() {
                  value = val!;
                });
              }),
        ),
        const HorizontalSpacer(space: 6),
        Text(
          "I agree to The Terms and Conditions",
          style:
              applyMediumStyle(fontSize: 14, fontColor: ColorConsatnts.black),
        )
      ],
    );
  }
}

class RadioGroupItems extends StatefulWidget {
  const RadioGroupItems({super.key});

  @override
  State<RadioGroupItems> createState() => _RadioGroupItemsState();
}

class _RadioGroupItemsState extends State<RadioGroupItems> {
  String selectedValue = "Sweet Roll";

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          CustomRadioButton(
            text: "Sandwich Paper",
            value: "Sandwich Paper",
            groupValue: selectedValue,
            onChanged: (val) {
              setState(() {
                selectedValue = val!;
              });
            },
          ),
          CustomRadioButton(
            text: "L Shape Paper",
            value: "L Shape Paper",
            groupValue: selectedValue,
            onChanged: (val) {
              setState(() {
                selectedValue = val!;
              });
            },
          ),
          CustomRadioButton(
            text: "Sandwich Pouch",
            value: "Sandwich Pouch",
            groupValue: selectedValue,
            onChanged: (val) {
              setState(() {
                selectedValue = val!;
              });
            },
          ),
          CustomRadioButton(
            text: "Wrapping Roll",
            value: "Wrapping Roll",
            groupValue: selectedValue,
            onChanged: (val) {
              setState(() {
                selectedValue = val!;
              });
            },
          ),
          CustomRadioButton(
            text: "Sweet Roll",
            value: "Sweet Roll",
            groupValue: selectedValue,
            onChanged: (val) {
              setState(() {
                selectedValue = val!;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.text,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String value;
  final String text;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 0.85,
          child: Radio<String>.adaptive(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            useCupertinoCheckmarkStyle: true,
            activeColor: ColorConsatnts.primary,
          ),
        ),
        const HorizontalSpacer(space: 4),
        Text(
          text,
          style: applyMediumStyle(
            fontSize: 14,
            fontColor: ColorConsatnts.black,
          ),
        ),
      ],
    );
  }
}
