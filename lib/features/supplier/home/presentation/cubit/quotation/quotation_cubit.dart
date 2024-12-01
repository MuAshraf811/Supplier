import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'quotation_state.dart';

class QuotationCubit extends Cubit<QuotationState> {
  QuotationCubit() : super(QuotationInitial());
final quotationFormKey = GlobalKey<FormState>();
String orderNumber = "";
  TextEditingController quotationDescriptionController =
      TextEditingController();
  TextEditingController quotationQuantityController = TextEditingController();
  TextEditingController quotationRateController = TextEditingController();
  TextEditingController quotationAmountController = TextEditingController();
  TextEditingController quotationVatController = TextEditingController();
  TextEditingController quotationTotalController = TextEditingController();
   void clearControllers(){ 
    quotationAmountController.clear(); 
    quotationDescriptionController.clear(); 
    quotationQuantityController.clear(); 
    quotationRateController.clear(); 
    quotationTotalController.clear(); 
    quotationVatController.clear();
   }
  addquotationOffer({ required String supplierId, required String supplierName}) async{  
    try { 
      emit(AddingQuotationState());
       final instance= FirebaseFirestore.instance.collection("quotations"); 
    await instance.add(
    { 
      "quotationDescription" : quotationDescriptionController.text, 
      "quantity" : quotationQuantityController.text, 
      "rate" : quotationRateController.text, 
      "amount":quotationAmountController.text, 
      "vat" : quotationVatController.text, 
      "total": quotationTotalController.text, 
      "orderNumber" : orderNumber, 
      "quotationDate": AppConst.getDate(), 
      "supplierId": supplierId, 
      "supplierName":supplierName
    }
   );  
   emit(AddingQuotationSuccessState());
   AddingQuotationSuccessState();
    } catch (e) { 
      log("**************"); 
      log(e.toString());
      emit(AddingQuotationErrorState(error: e.toString()));
    }
  
  }
}
