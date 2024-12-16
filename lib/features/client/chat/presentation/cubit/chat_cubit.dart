import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_printer/core/utils/constants/app_const.dart';
import 'package:e_printer/core/utils/constants/storage_const.dart';
import 'package:e_printer/core/utils/native/image_picker.dart';
import 'package:e_printer/core/utils/storage/shared_preferences.dart';
import 'package:e_printer/features/client/chat/model/message_model.dart';
import 'package:e_printer/features/client/chat/model/message_prod_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  final ScrollController chatScrollController = ScrollController();
  final TextEditingController messageController = TextEditingController();
  final chatTextFieldKey = GlobalKey<FormState>();
  List<MessageModel> allMessages = AppConst.chatMessagesExamples;
  List<MessageprodModel>? allChatMessages=[];

  String? imagepath;
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

  void getAllmessages() async {
    try {
       emit(FetchingMessagesState());
      final res = await FirebaseFirestore.instance
          .collection("chats")
          .doc(SharedPreferencesManager.getStringValue(key: StorageConstants.userId))
          .collection("messages").orderBy("time"  , descending: false)
          .get();
      final List<QueryDocumentSnapshot<Map<String, dynamic>>> response =
          res.docs;
      final chats =
          response.map((e) => MessageprodModel.fromJson(e.data())).toList();
     
  allChatMessages?.addAll(chats);
  // chatScrollController
  //         .jumpTo(chatScrollController.position.maxScrollExtent);
       emit(FetchingMessagesSuccessState());
    } catch (e) {
      log(e.toString());
      emit(FetchingMessagesErrorState(error: e.toString()));
    }
  }

  void sendAMessage() async {
    try {
      MessageprodModel message = MessageprodModel(
        message: messageController.text,
        time: "${DateTime.now().hour.toString().padLeft(2,'0')}:${DateTime.now().minute.toString().padLeft(2,'0')}:${DateTime.now().second.toString().padLeft(2,'0')}",
        userId: SharedPreferencesManager.getStringValue(key: StorageConstants.userId),
      );
      await FirebaseFirestore.instance
          .collection("chats")
          .doc(SharedPreferencesManager.getStringValue(key: StorageConstants.userId))
          .collection("messages")
          .add(
            message.toMap(),
          );
      getAllmessages(); 
       
    } catch (e) {
      log(e.toString());
      emit(FetchingMessagesErrorState(error: e.toString()));
    }
  }

  // void sendMessage() {
  //   final message = messageController.text;
  //   AppConst.chatMessagesExamples.add(
  //     MessageModel(
  //       message: message,
  //       time: "${DateTime.now().hour}:${DateTime.now().minute}",
  //       isSender: true,
  //     ),
  //   );
  //   chatScrollController.jumpTo(chatScrollController.position.maxScrollExtent);

  //   emit(NewMessageState());
  // }

  void pickImage({required isFromCamera}) async {
    imagepath = await ImagePickerHelper.pick(isFromCamera).then((val)=> val?.path);
  }

  @override
  Future<void> close() {
    messageController.dispose();
    chatScrollController.dispose();
    return super.close();
  }

  void ploadImages() {}
}
