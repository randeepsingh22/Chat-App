import 'package:chat_app/common_helper/colors.dart';
import 'package:chat_app/common_helper/constants.dart';
import 'package:chat_app/ui_screen/dashboard/dashboard_utils/drawer/drawer_tile.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool lightMode = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.transparent,
                          border: Border.all(
                              width: 2, color: ColorsConstants.instance.white),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://pluspng.com/img-png/png-hd-handsome-man-suit-png-image-920.png"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 0),
                  child: Text("Randeep Singh",
                      style: TextStyle(
                        color: ColorsConstants.instance.white,
                        fontSize: Constants.instance.largefontSize,
                        fontWeight: Constants.instance.mediumFontWeight,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8.0),
                  child: Text(
                    "akash.bedi31@gmail.com",
                    style: TextStyle(
                      color: ColorsConstants.instance.white,
                      fontSize: Constants.instance.mediumfontSize,
                      // fontWeight: Constants.instance.mediumFontWeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          DrawerTile(
            title: "Profile",
            onPressed: () {},
            iconLeading:
                Icon(Icons.person, color: Theme.of(context).primaryColor),
          ),
          DrawerTile(
            title: "Contacts",
            onPressed: () {},
            iconLeading:
                Icon(Icons.person, color: Theme.of(context).primaryColor),
          ),
          DrawerTile(
            title: "Settings",
            onPressed: () {},
            iconLeading:
                Icon(Icons.person, color: Theme.of(context).primaryColor),
          ),
          DrawerTile(
            title: "Logout",
            onPressed: () {},
            iconLeading:
                Icon(Icons.person, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }

  void changeTheme() {
    setState(() {
      if (lightMode) {
        lightMode = false;
      } else {
        lightMode = true;
      }
    });
  }
}
