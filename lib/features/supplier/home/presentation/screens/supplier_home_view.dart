import 'package:e_printer/core/utils/constants/route_constants.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/orders/notifications/presentation/screens/notifications_screen.dart';
import 'package:e_printer/features/client/settings/presentation/views/profile_view.dart';
import 'package:e_printer/features/supplier/home/presentation/widgets/supplier_bottom_bar.dart';
import 'package:e_printer/features/supplier/home/presentation/widgets/supplier_home_app_bar.dart';
import 'package:e_printer/features/supplier/home/presentation/widgets/supplier_order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants/color_consatnts.dart';
import '../../../../../core/utils/widgets/svg_handler.dart';
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

