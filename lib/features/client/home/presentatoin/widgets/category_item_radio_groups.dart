import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryItemRadioGroup extends StatelessWidget {
  const CategoryItemRadioGroup({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
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
    );
  }
}

