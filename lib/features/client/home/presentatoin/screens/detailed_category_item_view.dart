import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/additional_drop_downs.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/category_item_radio_groups.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/detailed_screen_order_button.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/main_drop_downs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_check.dart';

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
              CategoryItemRadioGroup(index: index),
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
              MainDropDowns(index: index),
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
              AdditionalOrderDropDowns(index: index),
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

