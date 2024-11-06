import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/color_consatnts.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
  });
  static const List<String> _offerImages = [
    AssetsConstants.offer0,
    AssetsConstants.offer1,
    AssetsConstants.offer2
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _offerImages.length,
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
          color: ColorConsatnts.white,
          image: DecorationImage(
            image: AssetImage(
              _offerImages[index],
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(14.r),
        ),
      ),
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        height: 118.h,
        autoPlay: true,
        reverse: true,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.25,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 900),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
