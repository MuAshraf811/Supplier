import 'package:e_printer/core/utils/constants/assets_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/styles/text_styles.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/core/utils/widgets/svg_handler.dart';
import 'package:e_printer/features/client/orders/model/client_order_model.dart';
import 'package:e_printer/features/client/orders/presentation/cubit/orders_cubit.dart';
import 'package:e_printer/features/client/orders/presentation/widget/order_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpacer(space: 16),
          Align( 
            alignment: Alignment.topCenter,
            child: Text(
              "Your Order Summary ",
              style:
                  applyBoldStyle(fontSize: 17, fontColor: ColorConsatnts.black),
            ),
          ),
          const VerticalSpacer(space: 20),
          BlocBuilder<OrdersCubit, OrdersState>(
            buildWhen: (previous, current) =>
                current is FetchingOrderErrorState ||
                current is FetchingOrderState ||
                current is FetchingOrderSuccessState,
            builder: (context, state) {
              if (state is FetchingOrderSuccessState) {
                if (context.read<OrdersCubit>().clientOrders.isEmpty) {
                  return IntrinsicHeight(
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.center, 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SvgHandler(
                            imagePath: AssetsConstants.noData,
                            height: 300,
                            width: 54),
                        const VerticalSpacer(space: 28),
                        Text(
                          "There is no orders ",
                          style: applyMediumStyle(
                              fontSize: 18, fontColor: ColorConsatnts.black),
                        )
                      ],
                    ),
                  );
                }
                final List<ClientOrderModel> res =
                    context.read<OrdersCubit>().clientOrders;
                return Expanded(
                  child: ListView.builder(
                    itemCount: context.read<OrdersCubit>().clientOrders.length,
                    itemBuilder: (context, index) => OrderItem(  
                      onDelete: () {
                        context.read<OrdersCubit>().deleteOrder(orderId: res[index].orderId);
                      },
                      index: index + 1,
                      orderName: res[index].orderName,
                      orderDetails: res[index].orderDetails,
                      orderDescription: res[index].orderDescription,
                    ),
                  ),
                );
              }
              return Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => const ShimmerOrderItem()),
              );
            },
          ),
          const VerticalSpacer(space: 12),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.index,
    required this.orderName,
    required this.orderDetails,
    required this.orderDescription, 
    required this.onDelete,
  });
  final int index;
  final String orderName;
  final String orderDetails;
  final String orderDescription; 
  final VoidCallback onDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 16.h),
      margin: EdgeInsets.only(bottom: 10.h),
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
          Align( 
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 24.w, top: 16.h),
              child:    InkWell( 
                    onTap: onDelete,
                    child: const SvgHandler(
                      imagePath: AssetsConstants.deleteIcon,
                      height: 24,
                      width: 24,
                      color: Colors.red,
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class DividerWithText extends StatelessWidget {
  const DividerWithText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1.h,
          width: 80.w,
          color: ColorConsatnts.grey,
        ),
        const HorizontalSpacer(space: 6),
        Text(
          text,
          style:
              applyRegularStyle(fontSize: 14, fontColor: ColorConsatnts.grey),
        ),
        const HorizontalSpacer(space: 6),
        Container(
          height: 1.h,
          width: 80.w,
          color: ColorConsatnts.grey,
        ),
      ],
    );
  }
}
