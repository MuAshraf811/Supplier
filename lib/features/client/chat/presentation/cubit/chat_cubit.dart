import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/features/client/chat/model/message_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  final ScrollController chatScrollController = ScrollController();
  final TextEditingController messageController = TextEditingController();
  final chatTextFieldKey = GlobalKey<FormState>();
  List<MessageModel> allMessages = AppConst.chatMessagesExamples;
  void setUpScrollControllerConfigs() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (chatScrollController.hasClients) {
          chatScrollController
              .jumpTo(chatScrollController.position.maxScrollExtent);
        }
      },
    );
  }

  void sendMessage() {
    final message = messageController.text;
    AppConst.chatMessagesExamples.add(
      MessageModel(
        message: message,
        time: "${DateTime.now().hour}:${DateTime.now().minute}",
        isSender: true,
      ),
    );
    chatScrollController.jumpTo(chatScrollController.position.maxScrollExtent);

    emit(NewMessageState());
  }

  @override
  Future<void> close() {
    messageController.dispose();
    chatScrollController.dispose();
    return super.close();
  }

  void ploadImages() {}
}
