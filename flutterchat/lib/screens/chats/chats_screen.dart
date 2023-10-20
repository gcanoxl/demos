import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/screens/chats/components/body.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text("Chats"),
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
