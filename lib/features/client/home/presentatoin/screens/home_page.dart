import 'package:e_printer/core/cubit/nav_bar_cubit.dart';
import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/service_locator.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/Authentication/presentation/controllers/auth/authentication_cubit.dart';
import 'package:e_printer/features/client/home/presentatoin/cubit/main_home_cubit.dart';
import 'package:e_printer/features/client/orders/presentation/cubit/orders_cubit.dart';
import 'package:e_printer/features/client/settings/presentation/controller/cubit/settings_cubit.dart';
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
  static final List<Widget> _views = [
    const MainView(),
    BlocProvider<OrdersCubit>(
      create: (context) => OrdersCubit()..fetchClientOrders(),
      child: const OrdersView(),
    ),
    const NotificationsScreen(),
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
          create: (context) =>
              AuthenticationCubit()..getUserData(),
        ),
        BlocProvider(
          create: (context) =>  ServiceLocator.getIt.get<SettingsCubit>(),
        ),
      ],
      child: const ProfileView(),
    )
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
  const MainView({super.key});

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
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 1.w / 1.32.h,
                ),
                itemCount: AppConst.categoryModel(context)[state].length,
                itemBuilder: (context, index) => SectionGridItem(
                  onTap: () {
                    if (state == 0) {
                      Navigator.pushNamed(
                        context,
                        RouteConstants.detailedItemCategoryView,
                        arguments: AppConst.categoryModel(context)[
                                context.read<MainHomeCubit>().state][index]
                            .index,
                      );
                    } else if (state == 2) {
                      if (index > 3) {
                        Navigator.pushNamed(
                          context,
                          RouteConstants.detailedItemPackagingView,
                          arguments: {
                            "packageOrderIndex":
                                AppConst.categoryModel(context)[state][index]
                                    .index,
                            "title": AppConst.categoryModel(context)[state]
                                    [index]
                                .title,
                          },
                        );
                      } else {
                        Navigator.pushNamed(
                            context, RouteConstants.detailedPackagingView,
                            arguments: {
                              "innerIndex": 0,
                              "packageItemIndex":
                                  AppConst.categoryModel(context)[state][index]
                                      .index,
                              "title": AppConst.categoryModel(context)[state]
                                      [index]
                                  .title,
                            });
                      }
                    } else {
                      Navigator.pushNamed(
                          context, RouteConstants.otherDetailedView,
                          arguments: {
                            "image": AppConst.categoryModel(context)[state]
                                    [index]
                                .image,
                            "cat name":
                                AppConst.homeCategoryStrings(context)[state],
                            "item name": AppConst.categoryModel(context)[state]
                                    [index]
                                .title,
                          });
                    }
                  },
                  imagePath:
                      AppConst.categoryModel(context)[state][index].image,
                  title: AppConst.categoryModel(context)[state][index].title,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
