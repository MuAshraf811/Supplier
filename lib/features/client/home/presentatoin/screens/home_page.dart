import 'package:e_printer/core/cubit/nav_bar_cubit.dart';
import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/main_home_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../orders/notifications/presentation/screens/notifications_screen.dart';
import '../../../orders/presentation/screens/orders_view.dart';
import '../../../settings/presentation/views/profile_view.dart';
import '../widgets/bottm_nav_bar.dart';
import '../widgets/category_section.dart';
import '../widgets/floating_button.dart';
import '../widgets/home_carousel.dart';
import '../widgets/search_text_field.dart';
import '../widgets/section_grid_item.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  static const List<Widget> _views = [
    MainView(),
    OrdersView(),
    NotificationsScreen(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: const FloatingButton(),
      bottomNavigationBar: const AppBottomBar(),
      body: SafeArea(
        child: BlocBuilder<NavBarCubit, int>(
          builder: (context, state) {
            return _views[state];
          },
        ),
      ),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const CustomCarousel(),
        const VerticalSpacer(space: 14),
        const CategorySection(),
        const VerticalSpacer(space: 8),
        Expanded(
          child: BlocBuilder<MainHomeCubit, int>(
            builder: (context, state) {
              return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14.w,
                  mainAxisSpacing: 14.h,
                  childAspectRatio: 1.w / 1.2.h,
                ),
                itemCount: AppConst.categoryModel[state].length,
                itemBuilder: (context, index) => SectionGridItem(
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteConstants.detailedItemCategoryView,
                        
                        );
                  },
                  imagePath: AppConst.categoryModel[state][index].image,
                  title: AppConst.categoryModel[state][index].title,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
