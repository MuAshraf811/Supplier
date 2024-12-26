import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_printer/core/utils/constants/storage_const.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/features/client/Authentication/model/user_data_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  bool isMoreThan8 = false;
  bool isUpperCase = false;
  bool isSpecial = false;
  bool isNumber = false;

  AuthenticationCubit() : super(AuthenticationInitial());
  TextEditingController emailLogInController = TextEditingController();
  TextEditingController passwordLogInController = TextEditingController();
  TextEditingController emailRegisterController = TextEditingController();
  TextEditingController passwordRegisterController = TextEditingController();
  TextEditingController passwordConfirmationRegisterController =
      TextEditingController();
  TextEditingController firstNameRegisterController = TextEditingController();
  TextEditingController mobileNumberRegisterController =
      TextEditingController();
  TextEditingController lastNameRegisterController = TextEditingController();
  final registerFormKey = GlobalKey<FormState>();
  final logInFormKey = GlobalKey<FormState>();
  final forgetPasswordViewFormKey = GlobalKey<FormState>();

  late UserDataModel userPersonalData;
  String citySelection = "";
  String profileCitySelection = "";
  bool isTextSecure = false;
  TextEditingController emailProfileController = TextEditingController();
  TextEditingController firstNameProfileController = TextEditingController();
  TextEditingController lastNameProfileController = TextEditingController();
  TextEditingController mobileProfileController = TextEditingController();
  TextEditingController emailResetController = TextEditingController();

  final profileFormKey = GlobalKey<FormState>();

  logInwithApple() async {
    try {
      emit(LoadingLogInWithAppleState());
      final provider = AppleAuthProvider();

      final UserCredential res =
          await FirebaseAuth.instance.signInWithProvider(provider);
      if (res.credential == null) {
        emit(ErrorLogInWithAppleState(
            error: "Something went wrong , Please try again later"));
      }
      emit(SuccessLogInWithAppleState());
    } catch (e) {
      log(e.toString());
      emit(ErrorLogInWithAppleState(error: e.toString()));
    }
  }

  void changePassword() async {}
  void deleteAccount() async {
    try {} catch (e) {
      log(e.toString());
    }
  }

  void forgetPassword() async {
    emit(SendingPasswordResetEmailState());
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailResetController.text,
      );

      emit(SendingPasswordResetEmailSuccessState());
    } catch (e) {
      log(e.toString());
      emit(SendingPasswordResetEmailErrorState(error: e.toString()));
    }
  }

  void updateUserInfo() async {
    try {
      emit(UpdatingUserDataState());
      final instance = FirebaseFirestore.instance.collection("Users");
      await instance
          .doc(SharedPreferencesManager.getStringValue(
              key: StorageConstants.userDataId))
          .update(
        {
          "first_name": firstNameProfileController.text,
          "last_name": lastNameProfileController.text,
          "mobile_number": mobileProfileController.text,
          "city": profileCitySelection,
        },
      );
      emit(UpdatingUserDataSuccessState());
    } catch (e) {
      log("********************");
      log(e.toString());
      emit(UpdateUserDataErrorState(error: e.toString()));
    }
  }

  void addUserToDataBase() async {
    try {
      emit(AddingUserDataState());
      final instance = FirebaseFirestore.instance.collection("Users");
      final obj = await instance.add({
        "first_name": firstNameRegisterController.text,
        "last_name": lastNameRegisterController.text,
        "email": emailRegisterController.text,
        "password": passwordRegisterController.text,
        "role": "client",
        "mobile_number": mobileNumberRegisterController.text,
        "city": citySelection,
      });
      log("******* Adding User Function *******");
      log(obj.path);
      SharedPreferencesManager.storeStringValue(
          key: StorageConstants.userDataId, value: obj.id);
      emit(AddingUserDataSuccessState());
    } catch (e) {
      log("******* Adding User Function *******");
      log(e.toString());
      AddingUserDataErrorState(error: e.toString());
    }
  }

  void getUserData() async {
    try {
      emit(FetchingUserDataState());
      final instance = FirebaseFirestore.instance.collection("Users");
      DocumentSnapshot<Map<String, dynamic>> res = await instance
          .doc(SharedPreferencesManager.getStringValue(
              key: StorageConstants.userDataId))
          .get();
      if (res.data() != null) {
        userPersonalData = UserDataModel.fromJson(res.data()!);
        emit(FetchingUserDataSuccessState());
        profileCitySelection == userPersonalData.city;
        emailProfileController.text = userPersonalData.email;
        firstNameProfileController.text = userPersonalData.firstName;
        lastNameProfileController.text = userPersonalData.lastName;
        mobileProfileController.text = userPersonalData.mobileNumber;
      } else {
        emit(FetchUserDataErrorState(error: "Cann't fetch your data"));
      }
    } catch (e) {
      log("---------------");
      log(e.toString());
      emit(FetchUserDataErrorState(error: e.toString()));
    }
  }

  registerWithEmail() async {
    try {
      emit(LoadingAuthenticationWithEmailState());
      final response = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailRegisterController.text,
              password: passwordRegisterController.text);

      log(response.user!.email.toString());
      emit(SuccessAuthenticationWithEmailState());
    } on FirebaseAuthException catch (e) {
      emit(ErrorAuthenticationWithEmailState(error: e.message.toString()));
    }
  }

  logInWithEmail() async {
    try {
      emit(LoadingLogInWithEmailState());
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailLogInController.text,
          password: passwordLogInController.text);
      await SharedPreferencesManager.storeStringValue(
          key: StorageConstants.userId, value: response.user?.uid ?? "");

      emit(SuccessLogInWithEmailState());
    } on FirebaseAuthException catch (e) {
      emit(ErrorLogInWithEmailState(error: e.message.toString()));
    }
  }

  registerWithgoogle() async {
    try {
      emit(LoadingLogInWithGoogleState());

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        emit(ErrorLogInWithGoogleState(error: "Sign-in process was aborted."));
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(SuccessLogInWithGoogleState());
    } on FirebaseAuthException catch (e) {
      emit(ErrorLogInWithGoogleState(error: "Firebase Error: ${e.message}"));
    } on Exception catch (e) {
      emit(ErrorLogInWithGoogleState(
          error: "An error occurred: ${e.toString()}"));
    }
  }
}
