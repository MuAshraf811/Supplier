import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_printer/core/utils/constants/storage_const.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/features/client/orders/model/client_order_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(OrdersInitial());
  late List<ClientOrderModel> clientOrders ; 

 void deleteOrder({required String orderId})async{ 
    
   await FirebaseFirestore.instance.collection("Orders").doc(orderId).delete(); 
     fetchClientOrders();
 }



void fetchClientOrders() async {
  try {
    emit(FetchingOrderState());

    // Get the userId from SharedPreferences
    final String userId = SharedPreferencesManager.getStringValue(
      key: StorageConstants.userId,
    );


    // Query Firestore to fetch only documents matching the userId
    final QuerySnapshot<Map<String, dynamic>> response = await FirebaseFirestore.instance
        .collection("Orders")
        .where("userId", isEqualTo: userId)
        .get();
     
    // Map the documents to  model
   clientOrders = response.docs
    .map((e) => ClientOrderModel.fromJson({
          'id': e.id, // Add the document ID
          ...e.data(), // Spread the document data
        }))
    .toList();

    emit(FetchingOrderSuccessState());
  } catch (error) {
    log("Error fetching orders: $error");
    emit(FetchingOrderErrorState(error: error.toString()));
  }
}


  void storeOrder({
    required String date,
    required String orderType,
    required String category,
    required String details,
    required String extra,
  }) async {
    try {
      emit(AddingOrderState());
      final instance = FirebaseFirestore.instance.collection("Orders");

      await instance.add({
        "userId": SharedPreferencesManager.getStringValue(
            key: StorageConstants.userId),
        "date": date,
        "category": category,
        "orderType": orderType,
        "details": details,
        "extra_details": extra
      });

      emit(AddingOrderSuccessState());
    } catch (error) {
      log(error.toString());
      emit(AddingOrderErrorState(error: error.toString()));
    }
  }
}
