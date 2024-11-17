import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/app_button.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/orders/presentation/screens/orders_view.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const SupplierBottomBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
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
          ),
        ),
      ),
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
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 16.h),
            child: AppButton(
              text: "Make Offer",
              fontSize: 16,
              onTap: () {},
            ),
          ),
          const VerticalSpacer(space: 12),
          Padding(
            padding: EdgeInsets.only(left: 12.0.w),
            child: Text(
              "2 hours ago",
              style: applyMediumStyle(
                fontSize: 14,
                fontColor: ColorConsatnts.lightBlack,
              ),
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
      padding: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 4.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.r),
        child: BottomNavigationBar(
          currentIndex: context.read<SupplierNavBarCubit>().state,
          onTap: (value) {
            context.read<SupplierNavBarCubit>().changeNavBarPages(value);
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConsatnts.primary,
          unselectedItemColor: Colors.white70,
          unselectedIconTheme: const IconThemeData(color: Colors.white70),
          selectedItemColor: ColorConsatnts.white,
          items: const [
            BottomNavigationBarItem(
              icon: SvgHandler(
                imagePath: "assets/svgs/order-nav.svg",
                height: 20,
                width: 20,
                color: ColorConsatnts.white,
              ),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: SvgHandler(
                imagePath: "assets/svgs/mail-5-svgrepo-com.svg",
                height: 20,
                width: 20,
                color: ColorConsatnts.white,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: SvgHandler(
                imagePath: AssetsConstants.mailIcon,
                height: 20,
                width: 20,
                color: ColorConsatnts.white,
              ),
              label: "Notifications",
            ),
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
