import 'dart:developer';

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

      log(response.user!.email.toString());
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
