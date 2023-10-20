import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: padding,
      minWidth: double.infinity,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      color: color,
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
