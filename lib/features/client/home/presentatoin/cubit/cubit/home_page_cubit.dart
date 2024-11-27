import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());   
  final formKey = GlobalKey<FormState>();
   int indexFromChoice=0;
  late String radioButtonGroupValue ; 
  initGroupVal (int index){ 
    radioButtonGroupValue = CategoryConstants.printing[index].radioOptions[0];
   }
   rebuildDropDownsBasedONRadioIndex (){}
   rebuildRadioOnChooseing(String choice, int choiceIndex){  
    radioButtonGroupValue = choice; 
    indexFromChoice = choiceIndex;
    emit(RadioCurrentChoice(choice: choice, choiceIndex: choiceIndex));
   }
 

}
