import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'colors.dart';

void showSnackBar(
    String title, String message, bool isDismissable, Duration duration) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: ColorsConstants.instance.blue,
    colorText: ColorsConstants.instance.white,
    isDismissible: isDismissable,
    duration: duration,
    borderRadius: 10.0,
    dismissDirection: SnackDismissDirection.HORIZONTAL,
    forwardAnimationCurve: Curves.bounceInOut,
  );
}

void copyText(String textToCopy, String messageToShow) {
  Clipboard.setData(ClipboardData(text: textToCopy));
  showSnackBar(messageToShow, "", true, const Duration(seconds: 4));
}
