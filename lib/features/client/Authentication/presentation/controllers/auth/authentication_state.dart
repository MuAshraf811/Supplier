part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class LoadingAuthenticationWithEmailState extends AuthenticationState {}

final class SuccessAuthenticationWithEmailState extends AuthenticationState {}

final class ErrorAuthenticationWithEmailState extends AuthenticationState {
  final String error;

  ErrorAuthenticationWithEmailState({required this.error});
}

final class LoadingLogInWithEmailState extends AuthenticationState {}

final class SuccessLogInWithEmailState extends AuthenticationState {}

final class ErrorLogInWithEmailState extends AuthenticationState {
  final String error;

  ErrorLogInWithEmailState({required this.error});
}

final class LoadingLogInWithGoogleState extends AuthenticationState {}

final class SuccessLogInWithGoogleState extends AuthenticationState {}

final class ErrorLogInWithGoogleState extends AuthenticationState {
  final String error;

  ErrorLogInWithGoogleState({required this.error});
}
