import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

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
}
