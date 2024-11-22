import 'package:e_printer/core/cubit/nav_bar_cubit.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/features/client/Authentication/presentation/controllers/auth/authentication_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/cubit/home_page_cubit.dart';
import 'package:e_printer/features/client/settings/presentation/views/account_view.dart';
import 'package:e_printer/features/onboarding&splash/on_boarding_view.dart';
import 'package:e_printer/features/onboarding&splash/user_type_view.dart';
import 'package:e_printer/features/supplier/Authentication/presentation/screens/supplier_register_view.dart';
import 'package:e_printer/features/supplier/home/presentation/cubit/supplier_nav_bar_cubit.dart';
import 'package:e_printer/features/supplier/home/presentation/screens/filter_view.dart';
import 'package:e_printer/features/supplier/home/presentation/screens/supplier_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/client/Authentication/presentation/screens/login_view.dart';
import '../../features/client/Authentication/presentation/screens/register_view.dart';
import '../../features/client/chat/presentation/cubit/chat_cubit.dart';
import '../../features/client/chat/presentation/views/chat_view.dart';
import '../../features/client/home/presentatoin/cubit/main_home_cubit.dart';
import '../../features/client/home/presentatoin/screens/detailed_category_item_view.dart';
import '../../features/client/home/presentatoin/screens/home_page.dart';
import '../../features/supplier/Authentication/presentation/screens/forget_password_view.dart';
import '../../features/supplier/settings/presentation/views/terms_conditions.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.homePage:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<MainHomeCubit>(
                create: (context) => MainHomeCubit(),
              ),
              BlocProvider(
                create: (context) => NavBarCubit(),
              ),
            ],
            child: const HomePageView(),
          ),
        );
      case RouteConstants.logInView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => AuthenticationCubit(),
            child: const LoginView(),
          ),
        );
      case RouteConstants.termsAndConditionsView:
        return MaterialPageRoute(
          builder: (context) => const TermsAndConditionsView(),
        );
      case RouteConstants.changePasswordView:
        return MaterialPageRoute(
          builder: (context) => const ChangePasswordView(),
        );
      case RouteConstants.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );
      case RouteConstants.accountView:
        return MaterialPageRoute(
          builder: (context) => const AccountView(),
        );
      case RouteConstants.chatView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<ChatCubit>(
            create: (context) => ChatCubit()..setUpScrollControllerConfigs(),
            child: const ChatView(),
          ),
        );
      case RouteConstants.detailedItemCategoryView:
        final args = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) => BlocProvider<HomePageCubit>(
            create: (context) => HomePageCubit()..initIndex(args),
            child: DetailedCategoryItemView(
              index: args,
            ),
          ),
        );
      case RouteConstants.supplierFilterView:
        return MaterialPageRoute(
          builder: (context) => const FilterView(),
        );
      case RouteConstants.supplierRegistererView:
        return MaterialPageRoute(
          builder: (context) => const SupplierRegisterView(),
        );
      case RouteConstants.supplierHomeView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SupplierNavBarCubit>(
            create: (context) => SupplierNavBarCubit(),
            child: const SupplierHomeView(),
          ),
        );
      case RouteConstants.registerView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => AuthenticationCubit(),
            child: const RegisterView(),
          ),
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
