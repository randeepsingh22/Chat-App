import 'package:chat_app/common_helper/constants/colors.dart';
import 'package:chat_app/common_helper/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText, labelText;
  final TextInputType inputType;
  final String errorText;
  const InputWidget(
      {Key? key,
      required this.inputType,
      required this.errorText,
      required this.controller,
      required this.hintText,
      required this.labelText})
      : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: TextField(
        maxLines: 1,
        cursorColor: ColorsConstants.instance.blue,
        controller: widget.controller,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          errorText: widget.errorText.isEmpty ? null : widget.errorText,
          hintText: widget.hintText,
          label: Text(widget.labelText),
          labelStyle: GoogleFonts.roboto(
            fontSize: Constants.instance.mediumfontSize,
          ),
          hintStyle:
              GoogleFonts.roboto(fontSize: Constants.instance.mediumfontSize),
          focusColor: ColorsConstants.instance.blue,
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorsConstants.instance.blue, width: 1.0)),
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorsConstants.instance.blue, width: 1.0),
          ),
        ),
      ),
    );
  }
}
