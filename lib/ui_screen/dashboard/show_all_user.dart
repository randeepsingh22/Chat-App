import 'package:chat_app/common_helper/constants.dart';
import 'package:chat_app/models/show_users_screen_model.dart';
import 'package:flutter/material.dart';

import 'dashboard_utils/drawer/drawer.dart';
import 'dashboard_utils/show_user_tile.dart';

class ShowAllUserScreen extends StatefulWidget {
  const ShowAllUserScreen({Key? key}) : super(key: key);

  @override
  _ShowAllUserScreenState createState() => _ShowAllUserScreenState();
}

class _ShowAllUserScreenState extends State<ShowAllUserScreen> {
  List<ShowUserScreenModel> usersList = [
    ShowUserScreenModel(
        username: "Randeep Singhh    dhgfhfgjfjjkhjhjkgjglglghhl",
        imageurl:
            "https://pluspng.com/img-png/png-hd-handsome-man-suit-png-image-920.png",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There"),
    ShowUserScreenModel(
        username: "Randeep Singh",
        imageurl:
            "https://pluspng.com/img-png/png-hd-handsome-man-suit-png-image-920.png",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There"),
    ShowUserScreenModel(
        username: "Randeep Singh",
        imageurl:
            "https://pluspng.com/img-png/png-hd-handsome-man-suit-png-image-920.png",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
    ShowUserScreenModel(
        username: "Rohan Singh",
        imageurl:
            "https://media.istockphoto.com/photos/serious-young-man-picture-id168542582?k=6&m=168542582&s=612x612&w=0&h=oBduskq9wylQx12Ki4B2twH6akVTh8rlDusq8iKd1Ig=",
        lastUpdatedTime: "10.00 AM",
        recentMessage: "Hello! There What are you doing can I hepl you"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Connection",
                    style: TextStyle(
                        fontWeight: Constants.instance.mediumFontWeight),
                  ),
                ],
              ),
              const Icon(Icons.search)
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: usersList.length,
            itemBuilder: (context, index) {
              return ShowUserTile(
                userName: usersList[index].username ?? "",
                profileImageUrl: usersList[index].imageurl ?? "",
                lasttext: usersList[index].recentMessage ?? "",
                lastUpdatedTime: usersList[index].lastUpdatedTime ?? "",
                onPressed: () {},
                onProfileImageTap: () {},
              );
            }));
  }

  Widget showUserTile(int index) {
    return Row(
      children: [
        CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: usersList[index].imageurl != ""
                ? NetworkImage(usersList[index].imageurl ?? "")
                : const NetworkImage("")),
      ],
    );
  }
}
