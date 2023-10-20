import 'package:flutter/material.dart';
import 'package:flutterchat/components/filled_outline_button.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/models/Chat.dart';

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

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.chat,
    required this.onPressed,
  });
  final Chat chat;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding * 0.75,
        ),
        child: Row(children: [
          Stack(children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(chat.image),
            ),
            if (chat.isActive)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3,
                    ),
                  ),
                ),
              ),
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      // style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.64,
            child: Text(chat.time),
          ),
        ]),
      ),
    );
  }
}
