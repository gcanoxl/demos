import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/screens/chats/components/chats_body.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ChatsBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selected,
      onTap: (value) {
        setState(() {
          _selected = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Contact",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: "Calls",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
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
