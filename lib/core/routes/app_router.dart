import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/features/Authentication/presentation/screens/forget_password_view.dart';
import 'package:e_printer/features/Authentication/presentation/screens/login_view.dart';
import 'package:e_printer/features/Authentication/presentation/screens/register_view.dart';
import 'package:e_printer/features/home/presentatoin/cubit/main_home_cubit.dart';
import 'package:e_printer/features/home/presentatoin/screens/detailed_category_item_view.dart';
import 'package:e_printer/features/home/presentatoin/screens/home_page.dart';
import 'package:e_printer/features/onboarding&splash/user_type_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.homePage:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<MainHomeCubit>(
            create: (context) => MainHomeCubit(),
            child: const HomePageView(),
          ),
        );
      case RouteConstants.logInView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case RouteConstants.detailedItemCategoryView:
        return MaterialPageRoute(
          builder: (context) => const DetailedCategoryItemView(),
        );
      case RouteConstants.registerView:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );
      case RouteConstants.forgetPasswordView:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView(),
        );
      case RouteConstants.userTypeView:
        return MaterialPageRoute(
          builder: (context) => const UserTypeView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomePageView(),
        );
    }
  }
}
