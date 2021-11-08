import 'package:chat_app/common_helper/colors.dart';
import 'package:chat_app/common_helper/common_functions.dart';
import 'package:chat_app/common_helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageTile extends StatelessWidget {
  MessageTile(
      {Key? key,
      required this.senderName,
      required this.isSentByMe,
      required this.lastUpdatedTime,
      required this.message,
      required this.onDeletePressed})
      : super(key: key);

  final GestureTapCallback onDeletePressed;

  String senderName;
  String message;
  bool isSentByMe;
  String lastUpdatedTime;

  @override
  Widget build(BuildContext context) {
    var name = senderName.split(" ");
    return Align(
      alignment:
          isSentByMe == true ? Alignment.centerRight : Alignment.centerLeft,
      child: Slidable(
        closeOnScroll: true,
        enabled: isSentByMe == true ? true : false,
        actionPane: const SlidableDrawerActionPane(),
        actionExtentRatio: 0.2,
        secondaryActions: <Widget>[
          GestureDetector(
            onTap: () {
              copyText(message, "Text Copied Successfully.");
            },
            child: const Icon(Icons.copy_all),
          ),
          GestureDetector(
            onTap: onDeletePressed,
            child: Icon(
              Icons.delete,
              color: ColorsConstants.instance.red,
            ),
          )
        ],
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            isSentByMe == false
                ? Container()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name[0],
                        style: TextStyle(
                            color: isSentByMe == true
                                ? ColorsConstants.instance.teal
                                : ColorsConstants.instance.grey,
                            fontSize: Constants.instance.smallfontSize,
                            fontWeight: Constants.instance.mediumFontWeight),
                      ),
                      Text(
                        lastUpdatedTime,
                        style: TextStyle(
                          color: ColorsConstants.instance.grey,
                          fontSize: Constants.instance.smallfontSize,
                        ),
                      )
                    ],
                  ),
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              // width: MediaQuery.of(context).size.width ,
              padding: const EdgeInsets.all(7.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: isSentByMe == true
                        ? ColorsConstants.instance.blue
                        : ColorsConstants.instance.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          message,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: isSentByMe == true
                                  ? ColorsConstants.instance.white
                                  : ColorsConstants.instance.black,
                              fontSize: Constants.instance.largefontSize,
                              fontWeight: Constants.instance.normalFontWeight),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            isSentByMe == false
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name[0],
                        style: TextStyle(
                            color: ColorsConstants.instance.teal,
                            fontSize: Constants.instance.smallfontSize,
                            fontWeight: Constants.instance.mediumFontWeight),
                      ),
                      Text(
                        lastUpdatedTime,
                        style: TextStyle(
                          color: ColorsConstants.instance.grey,
                          fontSize: Constants.instance.smallfontSize,
                        ),
                      )
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
