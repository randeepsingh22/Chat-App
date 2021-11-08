class ShowUserScreenModel {
  String? username, lastUpdatedTime, recentMessage, imageurl;

  ShowUserScreenModel(
      {this.imageurl, this.lastUpdatedTime, this.recentMessage, this.username});

  ShowUserScreenModel.fromJson(Map<String, dynamic> json) {
    username = json["user_name"];
    lastUpdatedTime = json["last_updated_time"];
    recentMessage = json["recent_message"];
    imageurl = json["image_url"];
  }
}
