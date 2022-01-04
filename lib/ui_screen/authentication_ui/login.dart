import 'package:chat_app/common_helper/constants/colors.dart';
import 'package:chat_app/common_helper/constants/constants.dart';
import 'package:chat_app/common_helper/constants/path_helper.dart';
import 'package:chat_app/ui_screen/authentication_ui/sign_up.dart';
import 'package:chat_app/ui_screen/dashboard/show_all_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'authentication_utils/input_text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool hidePassword = true;
  var errorEmailText = "";
  var errorPassword = "";
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25.0, right: 25.0),
        width: screenWidth,
        // color: Colors.red,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.40,
                width: screenWidth,
                child: Image.asset(
                  PathHelper.instance.LOGIN_IMAGE,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Login To Continue",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontWeight: Constants.instance.maxlFontWeight,
                      color: ColorsConstants.instance.blue,
                      fontSize: 22.0),
                ),
              ),
              InputWidget(
                  errorText: errorEmailText,
                  inputType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: "Please Enter Your Email",
                  labelText: "Enter Your Email"),
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: TextField(
                  maxLines: 1,
                  cursorColor: ColorsConstants.instance.blue,
                  controller: passwordController,
                  obscureText: hidePassword,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    errorText: errorPassword.isEmpty ? null : errorPassword,
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (hidePassword) {
                            hidePassword = false;
                          } else {
                            hidePassword = true;
                          }
                        });
                      },
                      child: hidePassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                    hintText: "Enter Your Password",
                    label: const Text("Enter Your Password"),
                    labelStyle: GoogleFonts.roboto(
                      fontSize: Constants.instance.mediumfontSize,
                    ),
                    hintStyle: GoogleFonts.roboto(
                        fontSize: Constants.instance.mediumfontSize),
                    focusColor: ColorsConstants.instance.blue,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorsConstants.instance.blue, width: 1.0)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorsConstants.instance.blue, width: 1.0),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  crediantialValidator();
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: ColorsConstants.instance.blue,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.lato(
                        fontSize: Constants.instance.largefontSize,
                        fontWeight: Constants.instance.extraFontWeight,
                        color: ColorsConstants.instance.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "New User? ",
                      style: GoogleFonts.lato(
                          fontSize: Constants.instance.mediumfontSize,
                          fontWeight: Constants.instance.mediumFontWeight),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SignUpPage());
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.lato(
                            fontSize: Constants.instance.mediumfontSize,
                            fontWeight: Constants.instance.maxlFontWeight,
                            color: ColorsConstants.instance.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void crediantialValidator() {
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      setState(() {
        errorEmailText = "Email cannot be Empty";
        errorPassword = "Password cannot be Empty";
      });
    } else if (emailController.text.length < 5) {
      setState(() {
        errorEmailText = "Email should be Greater than Five character";
      });
    } else if (emailController.text.isEmpty) {
      setState(() {
        errorEmailText = "Enter Your Email";
      });
    } else if (passwordController.text.isEmpty) {
      setState(() {
        errorPassword = "Password cannot be Empty";
      });
    } else {
      Get.offAll(() => const ShowAllUserScreen());
    }
  }
}
