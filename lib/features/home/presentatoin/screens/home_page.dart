import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/home/presentatoin/widgets/bottm_nav_bar.dart';
import 'package:e_printer/features/home/presentatoin/widgets/section_grid_item.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          const CustomAppBar(),
          const CustomCarousel(),
          const VerticalSpacer(space: 18),
          const CategorySection(),
          const VerticalSpacer(space: 12),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
              ),
              itemCount: 8,
              itemBuilder: (context, index) => const SectionGridItem(
                  imagePath: AssetsConstants.category1,
                  title: "Printing",
                  descrption: "this is Section descrption"),
            ),
          ),
        ],
      ),
    );
  }
}
