import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    this.isFilled = true,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final bool isFilled;
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isFilled ? Colors.white : Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        side: BorderSide(color: Colors.white),
      ),
      elevation: isFilled ? 2 : 0,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
