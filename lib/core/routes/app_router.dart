import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/features/home/presentatoin/screens/home_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePageView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const HomePageView(),
        );
    }
  }
}
