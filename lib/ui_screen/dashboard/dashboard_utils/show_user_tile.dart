
import 'package:chat_app/common_helper/constants/colors.dart';
import 'package:chat_app/common_helper/constants/constants.dart';
import 'package:flutter/material.dart';

class ShowUserTile extends StatelessWidget {
  const ShowUserTile(
      {Key? key,
      required this.onPressed,
      required this.onProfileImageTap,
      required this.lastUpdatedTime,
      required this.lasttext,
      required this.profileImageUrl,
      required this.userName})
      : super(key: key);
  final GestureTapCallback onPressed, onProfileImageTap;
  final String profileImageUrl;
  final String lastUpdatedTime;
  final String userName;
  final String lasttext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          GestureDetector(
            onTap: onProfileImageTap,
            child: Container(
              width: 50.0,
              height: 50.0,
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  // shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(profileImageUrl), fit: BoxFit.cover),
                  border: Border.all(
                      width: 2, color: ColorsConstants.instance.blue)),
              // child: CircleAvatar(
              //   foregroundColor: Colors.transparent,
              //   backgroundImage: NetworkImage(profileImageUrl),
              // ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.60),
                      child: Text(
                        userName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: Constants.instance.maxlFontWeight,
                            fontSize: Constants.instance.largefontSize),
                      ),
                    ),
                    Text(lastUpdatedTime)
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  lasttext,
                  style: TextStyle(color: ColorsConstants.instance.grey),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 0.5,
                  color: ColorsConstants.instance.lightgrey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
