import 'package:chat_app/models/chat_message_modal.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  var chatList = <ChatMessageModal>[].obs;

  var onlineStatus = false.obs;
}
