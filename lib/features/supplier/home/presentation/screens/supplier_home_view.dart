import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/orders/notifications/presentation/screens/notifications_screen.dart';
import 'package:e_printer/features/client/orders/presentation/screens/orders_view.dart';
import 'package:e_printer/features/client/settings/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/assets_constants.dart';
import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/widgets/svg_handler.dart';
import '../../../../client/home/presentatoin/widgets/search_text_field.dart';
import '../cubit/supplier_nav_bar_cubit.dart';

class SupplierHomeView extends StatelessWidget {
  const SupplierHomeView({super.key});
  static const _view = [
    SupplierOrdersView(),
    SupplierOrdersView(),
    NotificationsScreen(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: ColorConsatnts.primary,
        child: const SvgHandler(
          imagePath: "assets/svgs/chat-round-line-svgrepo-com.svg",
          height: 22,
          color: ColorConsatnts.white,
          width: 22,
        ),
        onPressed: () {
          Navigator.pushNamed(context, RouteConstants.chatView);
        },
      ),
      bottomNavigationBar: const SupplierBottomBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: BlocBuilder<SupplierNavBarCubit, int>(
            builder: (context, state) {
              return _view[state];
            },
          ),
        ),
      ),
    );
  }
}

class SupplierOrdersView extends StatelessWidget {
  const SupplierOrdersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpacer(space: 16),
        const SupplierHomePageAppBar(),
        const VerticalSpacer(space: 12),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => SupplierOrderItem(
              index: index + 1,
              orderName: "Offset Printing",
              orderDetails: "Details Details Dummy Details",
              orderDescription: "Details Details Dummy Details",
            ),
          ),
        ),
      ],
    );
  }
}

class SupplierOrderItem extends StatelessWidget {
  const SupplierOrderItem({
    super.key,
    required this.index,
    required this.orderName,
    required this.orderDetails,
    required this.orderDescription,
  });
  final int index;
  final String orderName;
  final String orderDetails;
  final String orderDescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 16.h),
      margin: EdgeInsets.only(bottom: 18.h),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConsatnts.grey),
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: 24.w,
            height: 18.h,
            decoration: BoxDecoration(
                color: ColorConsatnts.primary,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(12.r))),
            child: Text(
              index.toString(),
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              orderName,
              style: applyBoldStyle(
                fontSize: 16,
                fontColor: ColorConsatnts.primary,
              ),
            ),
          ),
          const VerticalSpacer(space: 8),
          const DividerWithText(text: "Order Details"),
          const VerticalSpacer(space: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              orderDetails,
              textAlign: TextAlign.center,
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.black,
              ),
            ),
          ),
          const VerticalSpacer(space: 8),
          const DividerWithText(text: "Order Description"),
          const VerticalSpacer(space: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              orderDescription,
              textAlign: TextAlign.center,
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.black,
              ),
            ),
          ),
          const VerticalSpacer(space: 24),
          Padding(
            padding: EdgeInsets.only(left: 12.0.w, right: 14.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  text: "Make Offer",
                  textColor: ColorConsatnts.primary,
                  color: ColorConsatnts.white,
                  fontSize: 16,
                  width: 160.w,
                  onTap: () {},
                ),
                Text(
                  "2 hours ago",
                  style: applyMediumStyle(
                    fontSize: 14,
                    fontColor: ColorConsatnts.lightBlack,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SupplierHomePageAppBar extends StatelessWidget {
  const SupplierHomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomTextField(),
        ),
        const HorizontalSpacer(space: 12),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, RouteConstants.supplierFilterView);
          },
          child: Container(
            width: 36.w,
            height: 36.w,
            decoration: BoxDecoration(
              color: ColorConsatnts.primary.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Transform.scale(
              scale: 0.65,
              child: const SvgHandler(
                imagePath: AssetsConstants.filterIcon,
                height: 15,
                width: 15,
                color: ColorConsatnts.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SupplierBottomBar extends StatelessWidget {
  const SupplierBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.w, right: 6.w, bottom: 6.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: ColorConsatnts.primary, width: 2.5.w)),
        child: BlocBuilder<SupplierNavBarCubit, int>(
          builder: (context, state) {
            return BottomNavigationBar(
              currentIndex: context.read<SupplierNavBarCubit>().state,
              onTap: (value) {
                context.read<SupplierNavBarCubit>().changeNavBarPages(value);
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorConsatnts.primary,
              unselectedItemColor: ColorConsatnts.white,
              selectedItemColor: ColorConsatnts.white,
              items: [
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Container(
                        width: 32.w,
                        margin: EdgeInsets.only(bottom: 4.h),
                        height: 4.h,
                        color: state == 0
                            ? ColorConsatnts.white
                            : ColorConsatnts.primary,
                      ),
                      const SvgHandler(
                        imagePath: "assets/svgs/order-nav.svg",
                        height: 20,
                        width: 20,
                        color: ColorConsatnts.white,
                      ),
                    ],
                  ),
                  label: "Orders",
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Container(
                        width: 32.w,
                        height: 4.h,
                        margin: EdgeInsets.only(bottom: 4.h),
                        color: state == 1
                            ? ColorConsatnts.white
                            : ColorConsatnts.primary,
                      ),
                      const SvgHandler(
                        imagePath:
                            "assets/svgs/offer-hot-product-fire-svgrepo-com.svg",
                        height: 20,
                        width: 20,
                        color: ColorConsatnts.white,
                      ),
                    ],
                  ),
                  label: "Offers",
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Container(
                        width: 32.w,
                        margin: EdgeInsets.only(bottom: 4.h),
                        height: 4.h,
                        color: state == 2
                            ? ColorConsatnts.white
                            : ColorConsatnts.primary,
                      ),
                      const SvgHandler(
                        imagePath: AssetsConstants.mailIcon,
                        height: 20,
                        width: 20,
                        color: ColorConsatnts.white,
                      ),
                    ],
                  ),
                  label: "Notifications",
                ),
                BottomNavigationBarItem(
                  icon: Column(
                    children: [
                      Container(
                        width: 32.w,
                        margin: EdgeInsets.only(bottom: 4.h),
                        height: 4.h,
                        color: state == 3
                            ? ColorConsatnts.white
                            : ColorConsatnts.primary,
                      ),
                      const SvgHandler(
                        imagePath: AssetsConstants.profileIcon,
                        height: 22,
                        width: 22,
                        color: ColorConsatnts.white,
                      ),
                    ],
                  ),
                  label: "Profile",
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
