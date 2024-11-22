import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedCategoryItemView extends StatelessWidget {
  const DetailedCategoryItemView({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 16.h),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SvgHandler(
                    imagePath: AssetsConstants.arrowLeftIcon,
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const VerticalSpacer(space: 18),
              Text(
                CategoryConstants.printing[index].title,
                style: applySemiBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.primary,
                ),
              ),
              IntrinsicHeight(
                child: BlocBuilder<HomePageCubit, HomePageState>(
                  buildWhen: (previous, current) =>
                      current is RadioCurrentChoice,
                  builder: (context, state) {
                    return Column(
                      children: CategoryConstants.printing[index].radioOptions
                          .map(
                            (e) => CustomRadioButton(
                              text: e,
                              value: e,
                              groupValue:
                                  context.read<HomePageCubit>().selectedValue,
                              onChanged: (val) {
                                context
                                    .read<HomePageCubit>()
                                    .changeDropDownsBasedOnRadio(val!);
                              },
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
              ),
              const VerticalSpacer(space: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: BlocBuilder<HomePageCubit, HomePageState>(
                  builder: (context, state) {
                    return Text(
                      context.read<HomePageCubit>().selectedValue,
                      style: applySemiBoldStyle(
                        fontSize: 16,
                        fontColor: ColorConsatnts.primary,
                      ),
                    );
                  },
                ),
              ),
              const VerticalSpacer(space: 12),
              SizedBox(
                  height: 180.h,
                  child: BlocBuilder<HomePageCubit, HomePageState>(
                    buildWhen: (previous, current) =>
                        current is RadioCurrentChoice,
                    builder: (context, state) {
                      final d = CategoryConstants.printing[index + 1].details[
                              context.read<HomePageCubit>().selectedValueIndex]
                          ["details"] as Map;

                      return GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.w,
                          mainAxisSpacing: 10.w,
                          childAspectRatio: 2 / 0.7,
                        ),
                        children: d.entries.map((entry) {
                          final key = entry.key;
                          final value = entry.value;
                          return CustomDropDown(
                            text: key,
                            entries:
                                value, // Assuming `value` is the list for dropdown
                          );
                        }).toList(),
                      );
                    },
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Additionals",
                  style: applySemiBoldStyle(
                    fontSize: 16,
                    fontColor: ColorConsatnts.primary,
                  ),
                ),
              ),
              const VerticalSpacer(space: 12),
              SizedBox(
                  height: 60.h,
                  child: BlocBuilder<HomePageCubit, HomePageState>(
                    buildWhen: (previous, current) =>
                        current is RadioCurrentChoice,
                    builder: (context, state) {
                      final other = CategoryConstants.printing[index].details[
                              context.read<HomePageCubit>().selectedValueIndex]
                          ["other"] as Map;
                      return GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.w,
                            mainAxisSpacing: 10.w,
                            childAspectRatio: 2 / 0.7),
                        children: other.entries.map((entry) {
                          final key = entry.key;
                          final value = entry.value;
                          return CustomDropDown(
                            text: key,
                            entries:
                                value, // Assuming `value` is the list for dropdown
                          );
                        }).toList(),
                      );
                    },
                  )),
              const VerticalSpacer(space: 12),
              const CustomCheck(),
              const VerticalSpacer(space: 12),
              AppButton(
                text: "Add Order",
                onTap: () {},
                width: 120,
              ),
              const VerticalSpacer(space: 16),
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
        SizedBox(
          width: 58.w,
          child: Text(
            text,
            style:
                applyBoldStyle(fontSize: 12, fontColor: ColorConsatnts.black),
          ),
        ),
        Transform.scale(
          scaleY: 0.6,
          child: DropdownMenu(
            width: 90.w,
            trailingIcon: const Icon(
              Icons.arrow_drop_down,
              size: 24,
            ),
            inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.only(left: 4.w),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(6.r)),
            ),
            menuStyle: const MenuStyle(
                backgroundColor: WidgetStatePropertyAll(ColorConsatnts.white)),
            initialSelection: entries[0],
            dropdownMenuEntries: entries
                .map(
                  (e) => DropdownMenuEntry(
                    value: e,
                    label: "$e",
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class CustomCheck extends StatefulWidget {
  const CustomCheck({super.key, this.title});
  final String? title;
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
          widget.title ?? "I agree to The Terms and Conditions",
          style:
              applyMediumStyle(fontSize: 14, fontColor: ColorConsatnts.black),
        )
      ],
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
    return SizedBox(
      height: 28.h,
      child: Row(
        children: [
          Transform.scale(
            scale: 0.9,
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
      ),
    );
  }
}
