import 'package:flutter_bloc/flutter_bloc.dart'; 
part "app_config_state.dart";

class AppConfigCubit extends Cubit<AppConfigState> {
  AppConfigCubit():super(ConfigIntialState());  
  bool isEnglish = true;
  changeLanguage(String val){  
    val == "en"? isEnglish=true:isEnglish=false;
    emit(LanguageChangeState());
  }
}