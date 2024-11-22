import 'package:e_printer/core/cubit/nav_bar_cubit.dart';
import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/widgets/svg_handler.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.read<NavBarCubit>().state,
      onTap: (value) {
        context.read<NavBarCubit>().changeNavBarPages(value);
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorConsatnts.primary,
      unselectedItemColor: Colors.white70,
      unselectedIconTheme: const IconThemeData(color: Colors.white70),
      selectedItemColor: ColorConsatnts.white,
      items: const [
        BottomNavigationBarItem(
            icon: SvgHandler(
              imagePath: AssetsConstants.homeIcon,
              height: 22,
              width: 22,
              color: ColorConsatnts.white,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: SvgHandler(
              imagePath: "assets/svgs/order-nav.svg",
              height: 22,
              width: 22,
              color: ColorConsatnts.white,
            ),
            label: "Orders"),
        BottomNavigationBarItem(
            icon: SvgHandler(
              imagePath: AssetsConstants.mailIcon,
              height: 22,
              width: 22,
              color: ColorConsatnts.white,
            ),
            label: "Notifications"),
        BottomNavigationBarItem(
          icon: SvgHandler(
            imagePath: AssetsConstants.profileIcon,
            height: 22,
            width: 22,
            color: ColorConsatnts.white,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
