import 'package:flutter/material.dart';
import 'package:flutterchat/components/filled_outline_button.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/models/Chat.dart';
import 'package:flutterchat/screens/chats/components/chat_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
          color: kPrimaryColor,
          child: Row(children: [
            FillOutlineButton(
              onPressed: () {},
              text: "Recent Message",
            ),
            const SizedBox(width: kDefaultPadding),
            FillOutlineButton(
              onPressed: () {},
              text: "Active",
              isFilled: false,
            ),
          ]),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index) => ChatCard(
            chat: chatsData[index],
            onPressed: () {},
          ),
        ))
      ],
    );
  }
}
