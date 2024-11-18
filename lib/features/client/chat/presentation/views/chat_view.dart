import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/chat/presentation/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/chat_app_bar.dart';
import '../widgets/chat_bottom_bar.dart';
import '../widgets/message_item.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConsatnts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            children: [
              const VerticalSpacer(space: 18),
              const CustomAppbar(
                title: "SUPPLIER ADMIN",
              ),
              Expanded(
                child: BlocBuilder<ChatCubit, ChatState>(
                  buildWhen: (previous, current) => current is NewMessageState,
                  builder: (context, state) {
                    return ListView.builder(
                      padding: EdgeInsets.only(top: 12.h),
                      itemCount: context.read<ChatCubit>().allMessages.length,
                      controller:
                          context.read<ChatCubit>().chatScrollController,
                      itemBuilder: (context, index) => MessageItem(
                        isSender: context
                            .read<ChatCubit>()
                            .allMessages[index]
                            .isSender,
                        message: context
                            .read<ChatCubit>()
                            .allMessages[index]
                            .message,
                        time: context.read<ChatCubit>().allMessages[index].time,
                      ),
                    );
                  },
                ),
              ),
              BlocProvider<ChatCubit>.value(
                value: BlocProvider.of<ChatCubit>(context),
                child: const ChatBottomBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
