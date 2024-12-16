import 'dart:developer';
import 'dart:io';

import 'package:e_printer/core/utils/native/image_picker.dart';
import 'package:e_printer/features/supplier/Authentication/data/remote_data_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'supplier_auth_state.dart';

class SupplierAuthCubit extends Cubit<SupplierAuthState> {
  SupplierAuthCubit() : super(SupplierAuthInitial());
  TextEditingController emailRegisterController = TextEditingController();
  TextEditingController passwordRegisterController = TextEditingController();
  TextEditingController confirmPasswordRegisterController =
      TextEditingController();
  TextEditingController companyNameRegisterController = TextEditingController();
  TextEditingController bankNameRegisterController = TextEditingController();
  TextEditingController ipanNumberController = TextEditingController();
  TextEditingController taxNumberController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  String citySelection = "";
  final stepOneFormKey = GlobalKey<FormState>();
  final stepTwoFormKey = GlobalKey<FormState>();
  late File? imageFile;

  getTradeLisence() async { 
    try {
  final image = await ImagePickerHelper.pick(false);
    if (image != null) {
      imageFile = File(image.path); 
      emit(FetchingTradeLisenceSuccessState());
    }     else{ 
            emit(FetchingTradeLisenceErrorState(error: "Can not pick image"));

    }
    
     } catch (e) { 
              log(e.toString());
      emit(FetchingTradeLisenceErrorState(error: e.toString()));
    }
  
  }

  uploadTradeLisence() async {
    final imageName =
        "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().second}.jpg";
    try { 
      emit(UploadingTradeLisenceState()); 
      await RemoteDataBase.createSupaBaseBucket();
      await RemoteDataBase.insertImageIntoBacket(
          imageFile: imageFile!, imagePath: imageName); 
          emit(UploadingTradeLisenceSuccessState());
    }  catch (e) { 
      emit(UploadingTradeLisenceErrorState(error: e.toString()));
    }
  }
}
