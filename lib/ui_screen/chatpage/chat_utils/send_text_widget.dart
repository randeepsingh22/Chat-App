import 'package:chat_app/common_helper/colors.dart';
import 'package:chat_app/common_helper/text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendTextWidget extends StatefulWidget {
  final GestureTapCallback onVoicePressed, onSendTapPressd, onImageSelected;
  final TextEditingController sendTextController;

  const SendTextWidget(
      {Key? key,
      required this.onVoicePressed,
      required this.sendTextController,
      required this.onSendTapPressd,
      required this.onImageSelected})
      : super(key: key);

  @override
  State<SendTextWidget> createState() => _SendTextWidgetState();
}

class _SendTextWidgetState extends State<SendTextWidget> {
  @override
  void dispose() {
    super.dispose();
    widget.sendTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              // padding: const EdgeInsets.only(right: 5.0),
              decoration: BoxDecoration(
                color: ColorsConstants.instance.white,
                borderRadius: BorderRadius.circular(30.0),
                // border: const Border(
                //   top: BorderSide(color: Colors.blueAccent, width: 1),
                //   bottom: BorderSide(color: Colors.blueAccent, width: 1),
                //   left: BorderSide(color: Colors.blueAccent, width: 1),
                //   right: BorderSide(color: Colors.blueAccent, width: 1),
                // ),
              ),
              // margin: const EdgeInsets.all(8.0),
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextFormField(
                controller: widget.sendTextController,
                maxLines: 10,
                minLines: 1,
                style: TextStyle(color: ColorsConstants.instance.black),
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  hintText: ConstantsTexts.instance.typeAText,
                  hintStyle: TextStyle(color: ColorsConstants.instance.grey),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: widget.onImageSelected,
                    child: Icon(
                      Icons.upload_sharp,
                      color: ColorsConstants.instance.blue,
                    ),
                  ),
                  prefixIcon: GestureDetector(
                    onTap: widget.onImageSelected,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: ColorsConstants.instance.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: widget.onVoicePressed,
            child: Container(
              margin: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
              width: MediaQuery.of(context).size.width / 8.0,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: ColorsConstants.instance.blue,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Icon(
                Icons.mic,
                size: 25.0,
                color: ColorsConstants.instance.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: widget.onSendTapPressd,
            child: Container(
              margin: const EdgeInsets.fromLTRB(5.0, 0, 0, 0),
              width: MediaQuery.of(context).size.width / 8.0,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: ColorsConstants.instance.blue,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Icon(
                Icons.send_rounded,
                size: 25.0,
                color: ColorsConstants.instance.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
