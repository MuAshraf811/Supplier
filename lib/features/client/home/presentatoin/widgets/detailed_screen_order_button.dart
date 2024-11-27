import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/app_button.dart';

class DetailedScreenOrderButton extends StatelessWidget {
  const DetailedScreenOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: "Add Order",
      onTap: () {
        if (context.read<HomePageCubit>().formKey.currentState!.validate()) {}
      },
      width: 120,
    );
  }
}
