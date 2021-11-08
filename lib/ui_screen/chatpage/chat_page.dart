import 'package:chat_app/ui_screen/chatpage/chat_utils/chat_message_tile.dart';
import 'package:chat_app/ui_screen/chatpage/chat_utils/chat_top_bar.dart';
import 'package:chat_app/ui_screen/chatpage/chat_utils/send_text_widget.dart';
import 'package:chat_app/common_helper/api_helper.dart';
import 'package:chat_app/common_helper/colors.dart';
import 'package:chat_app/controllers/chat_controller.dart';
import 'package:chat_app/models/chat_message_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _sendTextController = TextEditingController();
  final ChatController _chatController = ChatController();

  late IO.Socket socket;
  @override
  void initState() {
    socket = IO.io(
        ApiHelper.instance.CHAT_SOCKET_API,
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build());
    socket.connect();
    socketListener();
    super.initState();
  }

  void sendMessage(String message) {
    var messageData = {
      "message": message,
      "is_sent_by_me": socket.id,
      "sender_name": "Randeep",
      "last_updated_time": "10.0"
    };
    socket.emit("message", messageData);
    _chatController.chatList.add(ChatMessageModal.fromJson(messageData));
  }

  void socketListener() {
    socket.on(
        "disconnect",
        (data) => {
              print("Disconnected `${data}`"),
              _chatController.onlineStatus.value = false,
            });
    socket.on(
        "connect",
        (data) => {
              print("Disconnected `${data}`"),
              _chatController.onlineStatus.value = true,
            });
    socket.on(
        "message-receive",
        (data) => {
              print("Message Received from Socket $data"),
              _chatController.chatList.add(ChatMessageModal.fromJson(data))
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => ChatTopBar(
            userName: "Randeep Singh",
            imageUrl:
                "https://pluspng.com/img-png/png-hd-handsome-man-suit-png-image-920.png",
            checkOnlineStatus: _chatController.onlineStatus.value,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: ColorsConstants.instance.lightBlue,
              child: Container(
                margin: const EdgeInsets.only(bottom: 53.0),
                child: Obx(
                  () => ListView.builder(
                    // reverse: true,
                    shrinkWrap: true,
                    itemCount: _chatController.chatList.length,
                    itemBuilder: (context, index) {
                      var currentMessage = _chatController.chatList[index];
                      // _chatController.chatList.value
                      return MessageTile(
                        senderName: currentMessage.senderName ?? "",
                        isSentByMe: currentMessage.isSentByMe == socket.id
                            ? true
                            : false,
                        lastUpdatedTime: currentMessage.lastUpdatedTime ?? "",
                        message: currentMessage.message ?? "",
                        onDeletePressed: () {
                          _chatController.chatList.remove(index);
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SendTextWidget(
            onImageSelected: () {},
            onSendTapPressd: () {
              sendMessage(_sendTextController.text);
              _sendTextController.text = "";
              FocusScope.of(context).requestFocus(FocusNode());
            },
            onVoicePressed: () {},
            sendTextController: _sendTextController,
          ),
        ],
      ),
    );
  }
}
