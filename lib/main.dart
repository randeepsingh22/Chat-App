import 'package:chat_app/ui_screen/authentication_ui/login.dart';
import 'package:chat_app/ui_screen/authentication_ui/sign_up.dart';
import 'package:chat_app/ui_screen/dashboard/show_all_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Chat App",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
