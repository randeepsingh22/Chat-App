import 'package:chat_app/common_helper/constants.dart';
import 'package:flutter/material.dart';

class ChatTopBar extends StatelessWidget {
  ChatTopBar(
      {Key? key,
      required this.checkOnlineStatus,
      required this.imageUrl,
      required this.userName})
      : super(key: key);

  String imageUrl;
  String userName;
  bool checkOnlineStatus;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                // color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: imageUrl != ""
                              ? NetworkImage(imageUrl)
                              : const NetworkImage("")),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        fontSize: Constants.instance.largefontSize,
                        fontWeight: Constants.instance.mediumFontWeight),
                  ),
                  checkOnlineStatus == true
                      ? Text(
                          "Online",
                          style: TextStyle(
                              fontSize: Constants.instance.smallfontSize),
                        )
                      : Container(),
                ],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              size: 25,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
