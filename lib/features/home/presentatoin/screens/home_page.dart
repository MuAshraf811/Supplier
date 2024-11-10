import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/home/presentatoin/cubit/main_home_cubit.dart';
import 'package:e_printer/features/home/presentatoin/widgets/bottm_nav_bar.dart';
import 'package:e_printer/features/home/presentatoin/widgets/section_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/category_section.dart';
import '../widgets/floating_button.dart';
import '../widgets/home_carousel.dart';
import '../widgets/search_text_field.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButton(),
      bottomNavigationBar: const AppBottomBar(),
      body: SafeArea(
        child: Column(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 14.w,
                      mainAxisSpacing: 14.h,
                      childAspectRatio: 1 / 1.2,
                    ),
                    itemCount: AppConst.categoryModel[state].length,
                    itemBuilder: (context, index) => SectionGridItem(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteConstants.detailedItemCategoryView);
                      },
                      imagePath: AppConst.categoryModel[state][index].image,
                      title: AppConst.categoryModel[state][index].title,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
