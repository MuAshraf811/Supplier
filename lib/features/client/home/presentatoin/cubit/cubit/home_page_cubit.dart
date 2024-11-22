import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/category_constants.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  String selectedValue = "Sandwich Paper";
  int detailedSectionIndex = 0;
  int selectedValueIndex = 0;
  initIndex(int index) {
    detailedSectionIndex = index;
  }

  changeDropDownsBasedOnRadio(String choice) {
    selectedValue = choice;
    selectedValueIndex = CategoryConstants
        .printing[detailedSectionIndex].radioOptions
        .indexOf(selectedValue);

    emit(RadioCurrentChoice(choice: choice, choiceIndex: selectedValueIndex));
  }
}
