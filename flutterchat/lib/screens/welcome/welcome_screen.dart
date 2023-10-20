import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/welcome_image.png'),
            Text(
              "Welcome to our freedom \nmessaging app",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "Freedom talk any person of your \nmother language.",
              style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .color
                    ?.withOpacity(0.64),
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
              child: Row(children: [
                Text(
                  "Skip",
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.color
                        ?.withOpacity(0.8),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
