import 'package:e_printer/features/client/home/model/order_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/category_constants.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  String selectedValue = "";
  int detailedSectionIndex = 0;
  int selectedValueIndex = 0;
  Map<String, dynamic> orderdetails = {};
  String addedOrderName = " Printing";
  String addedOrderType = "";
  late OrderModel addedOeder;
  initIndex(int index) {
    detailedSectionIndex = index;
  }

  void addOrder({String? orderExtraDetails}) {
    addedOeder = OrderModel(
        orderCategoryName: addedOrderName,
        orderType: selectedValue,
        orderDate:
            "${DateTime.now().day.toString().padLeft(2, "0")} - ${DateTime.now().month.toString().padLeft(2, "0")}-${DateTime.now().year}",
        orderDetails: orderdetails.toString(),
        orderExtraDescription: orderExtraDetails);
    if (kDebugMode) {
      print(addedOeder.toString());
    }
  }

  changeDropDownsBasedOnRadio(String choice) {
    selectedValue = choice;
    selectedValueIndex = CategoryConstants
        .printing[detailedSectionIndex].radioOptions
        .indexOf(selectedValue);

    emit(RadioCurrentChoice(choice: choice, choiceIndex: selectedValueIndex));
  }
}
