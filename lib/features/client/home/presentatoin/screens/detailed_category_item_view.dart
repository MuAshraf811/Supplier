import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_text_field.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/custom_drop_down.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/custom_radio_button.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/detailed_screen_order_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_check.dart';

class DetailedCategoryItemView extends StatelessWidget {
  const DetailedCategoryItemView({super.key, required this.categoryItemIndex});
  final int categoryItemIndex;
  @override
  Widget build(BuildContext context) {
    context.read<HomePageCubit>().initGroupVal(categoryItemIndex);
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 14.w,
            right: 14.w,
            top: 16.h,
          ),
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
                CategoryConstants.printing[categoryItemIndex].title,
                style: applySemiBoldStyle(
                  fontSize: 16,
                  fontColor: ColorConsatnts.primary,
                ),
              ),
              const VerticalSpacer(space: 12),
              BlocBuilder<HomePageCubit, HomePageState>(
                buildWhen: (previous, current) => current is RadioCurrentChoice,
                builder: (context, state) => IntrinsicHeight(
                  child: Column(
                    children: CategoryConstants
                        .printing[categoryItemIndex].radioOptions
                        .map((val) => CustomRadioButton(
                            text: val,
                            value: val,
                            groupValue: context
                                .read<HomePageCubit>()
                                .radioButtonGroupValue,
                            onChanged: (value) {
                              context
                                  .read<HomePageCubit>()
                                  .rebuildRadioOnChooseing(
                                      value!,
                                      CategoryConstants
                                          .printing[categoryItemIndex]
                                          .radioOptions
                                          .indexOf(value));
                            }))
                        .toList(),
                  ),
                ),
              ),
              const VerticalSpacer(space: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: BlocBuilder<HomePageCubit, HomePageState>(
                  buildWhen: (previous, current) =>
                      current is RadioCurrentChoice,
                  builder: (context, state) => Text(
                    CategoryConstants.printing[categoryItemIndex].details[
                        context.read<HomePageCubit>().indexFromChoice]["title"],
                    style: applySemiBoldStyle(
                      fontSize: 16,
                      fontColor: ColorConsatnts.primary,
                    ),
                  ),
                ),
              ),
              const VerticalSpacer(space: 12),
              BlocBuilder<HomePageCubit, HomePageState>(
                buildWhen: (previous, current) => current is RadioCurrentChoice,
                builder: (context, state) {
                  final radioDropDowns =
                      CategoryConstants.printing[categoryItemIndex].details[
                              context.read<HomePageCubit>().indexFromChoice]
                          ["details"] as Map<String, dynamic>;
                  return SizedBox(
                    height: 220.h,
                    child: GridView(
                                          physics:const NeverScrollableScrollPhysics(),

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.w,
                        mainAxisSpacing: 10.w,
                        childAspectRatio: 2 / 0.7,
                      ),
                      children: radioDropDowns.entries
                          .map((e) => CustomDropDown(
                              text: e.key,
                              entries: e.value,
                              onSelected: (val) {}))
                          .toList(),
                    ),
                  );
                },
              ),
              const VerticalSpacer(space: 12),
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
              BlocBuilder<HomePageCubit, HomePageState>(
                buildWhen: (previous, current) => current is RadioCurrentChoice,
                builder: (context, state) {
                  final radioDropDowns =
                      CategoryConstants.printing[categoryItemIndex].details[
                              context.read<HomePageCubit>().indexFromChoice]
                          ["other"] as Map<String, dynamic>;
                  return SizedBox(
                    height: 50.h,
                    child: GridView( 
                    physics:const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.w,
                        mainAxisSpacing: 10.w,
                        childAspectRatio: 2 / 0.7,
                      ), 
                    
                      children: radioDropDowns.entries
                          .map((e) => CustomDropDown(
                              text: e.key,
                              entries: e.value,
                              onSelected: (val) {}))
                          .toList(),
                    ),
                  );
                },
              ),
              const VerticalSpacer(space: 12),
              BlocBuilder<HomePageCubit, HomePageState>(
                builder: (context, state) {
                  final bool isRequird =
                      CategoryConstants.printing[categoryItemIndex].details[
                              context.read<HomePageCubit>().indexFromChoice]
                          ["isRequired"];
                  return Form( 
                    key: context.read<HomePageCubit>().formKey,
                    child: AppTextField(
                      label: isRequird
                          ? "This Field Is Required"
                          : "This Field is Optional ",
                      suffixIcon: Icons.edit,  
                      maxLines: 3,
                      validator: (value) {
                        if(isRequird && value==null&& value!.isEmpty){
                                return "This Field Shouldn't be null";
                        } 
                        return null;
                      },
                    ),
                  );
                },
              ),
              const VerticalSpacer(space: 12),
              const CustomCheck(),
              const VerticalSpacer(space: 12),
              const DetailedScreenOrderButton(),
              const VerticalSpacer(space: 16),
            ],
          ),
        ),
      ),
    );
  }
}
