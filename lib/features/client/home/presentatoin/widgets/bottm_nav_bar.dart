import 'package:e_printer/core/cubit/nav_bar_cubit.dart';
import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/widgets/svg_handler.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 4.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.r),
        child: BottomNavigationBar(
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
                  height: 20,
                  width: 20,
                  color: ColorConsatnts.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgHandler(
                  imagePath: "assets/svgs/order-nav.svg",
                  height: 20,
                  width: 20,
                  color: ColorConsatnts.white,
                ),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: SvgHandler(
                  imagePath: AssetsConstants.mailIcon,
                  height: 20,
                  width: 20,
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
        ),
      ),
    );
  }
}
