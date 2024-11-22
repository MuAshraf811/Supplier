import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDropDowns extends StatelessWidget {
  const MainDropDowns({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180.h,
        child: BlocBuilder<HomePageCubit, HomePageState>(
          buildWhen: (previous, current) =>
              current is RadioCurrentChoice,
          builder: (context, state) {
            final d = CategoryConstants.printing[index].details[
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
                  onSelected: (selectedValue) {
                    context.read<HomePageCubit>().orderdetails[key]= selectedValue;
                  },
                  text: key,
                  entries:
                      value, // Assuming `value` is the list for dropdown
                );
              }).toList(),
            );
          },
        ));
  }
}

