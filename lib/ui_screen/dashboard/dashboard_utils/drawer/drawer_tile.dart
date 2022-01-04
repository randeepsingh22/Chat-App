import 'package:chat_app/common_helper/constants/constants.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.onPressed,
    required this.iconLeading,
    required this.title,
  }) : super(key: key);
  final GestureTapCallback onPressed;
  final Icon iconLeading;
  // final Icon iconLeading;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            iconLeading,
            const SizedBox(
              width: 15.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: Constants.instance.largefontSize,
                  fontWeight: Constants.instance.mediumFontWeight),
            )
          ],
        ),
      ),
    );
  }
}
