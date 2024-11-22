import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/widgets/show_order_dialog_confirmation.dart';
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
        context.read<HomePageCubit>().addOrder(
    
        );
        showOrderConfirmation(
            context: context,
            orderCategory: context.read<HomePageCubit>().addedOeder.orderCategoryName,
            orderType: context.read<HomePageCubit>().addedOeder.orderType,
            extraDetails: "Hello This is Dummy",
            orderDate: context.read<HomePageCubit>().addedOeder.orderDate,
            details:
               context.read<HomePageCubit>().addedOeder.orderDetails);
      },
      width: 120,
    );
  }
}
