class ChatMessageModal {
  String? lastUpdatedTime;
  String? senderName;
  String? message;
  String? isSentByMe;

  ChatMessageModal(
      {this.isSentByMe, this.lastUpdatedTime, this.senderName, this.message});

  factory ChatMessageModal.fromJson(Map<String, dynamic> json) {
    return ChatMessageModal(
        lastUpdatedTime: json["last_updated_time"],
        senderName: json["sender_name"],
        message: json["message"],
        isSentByMe: json["is_sent_by_me"]);
  }
}
