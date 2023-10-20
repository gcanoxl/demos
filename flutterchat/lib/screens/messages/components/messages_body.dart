import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';

class MessagesBody extends StatelessWidget {
  const MessagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: SafeArea(
            child: Row(
              children: [
                const Icon(Icons.mic, color: kPrimaryColor),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 0.75),
                    height: 40,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.sentiment_satisfied_alt_outlined,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .color
                              ?.withOpacity(0.64),
                        ),
                        const SizedBox(width: kDefaultPadding / 4),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Type message",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.attach_file,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .color
                              ?.withOpacity(0.64),
                        ),
                        const SizedBox(width: kDefaultPadding / 4),
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .color
                              ?.withOpacity(0.64),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: kDefaultPadding / 4),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 0,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: kPrimaryColor,
                  child: const Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
