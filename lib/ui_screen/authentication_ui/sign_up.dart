import 'package:chat_app/common_helper/constants/colors.dart';
import 'package:chat_app/common_helper/constants/constants.dart';
import 'package:chat_app/common_helper/constants/path_helper.dart';
import 'package:chat_app/ui_screen/authentication_ui/authentication_utils/input_text_widget.dart';
import 'package:chat_app/ui_screen/authentication_ui/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool checkBoxChecked = false;
  bool hidePassword = true;
  bool hideConfirmPassword = true;

  String errorEmail = "";

  String errorPassword = "";
  String errorConfirmPassword = "";

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

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
                  PathHelper.instance.SIGN_UP_IMAGE,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Sign Up To Continue",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontWeight: Constants.instance.maxlFontWeight,
                      color: ColorsConstants.instance.blue,
                      fontSize: 22.0),
                ),
              ),
              InputWidget(
                  errorText: errorEmail,
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
                    hintText: "Please Enter Your Password",
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
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: TextField(
                  maxLines: 1,
                  cursorColor: ColorsConstants.instance.blue,
                  controller: passwordController,
                  obscureText: hideConfirmPassword,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    errorText: errorConfirmPassword.isEmpty
                        ? null
                        : errorConfirmPassword,
                    suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (hidePassword) {
                            hideConfirmPassword = false;
                          } else {
                            hideConfirmPassword = true;
                          }
                        });
                      },
                      child: hideConfirmPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                    hintText: "Please Confirm Your Password",
                    label: const Text("Confirm Your Password"),
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
              Row(
                children: [
                  Checkbox(
                    value: checkBoxChecked,
                    activeColor: ColorsConstants.instance.blue,
                    autofocus: true,
                    focusColor: ColorsConstants.instance.blue,
                    onChanged: (value) {
                      setState(
                        () {
                          if (checkBoxChecked == true) {
                            checkBoxChecked = false;
                          } else {
                            checkBoxChecked = true;
                          }
                        },
                      );
                    },
                  ),
                  Text(
                    "I accept the Term and Condition.",
                    style: GoogleFonts.roboto(
                        // fontWeight: Constants.instance.mediumFontWeight,
                        fontSize: Constants.instance.mediumfontSize),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: ColorsConstants.instance.blue,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Text(
                      "Create My Account",
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
                      "Already have an Account? ",
                      style: GoogleFonts.lato(
                          fontSize: Constants.instance.mediumfontSize,
                          fontWeight: Constants.instance.mediumFontWeight),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => const LoginPage());
                      },
                      child: Text(
                        "Login",
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
}
