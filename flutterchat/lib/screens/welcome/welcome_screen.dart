import 'package:flutter/material.dart';
import 'package:flutterchat/constants.dart';
import 'package:flutterchat/screens/signInOrSignUp/signin_or_signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.asset('assets/images/welcome_image.png'),
            const Spacer(flex: 3),
            Text(
              "Welcome to our freedom \nmessaging app",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 1),
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
            const Spacer(flex: 3),
            FittedBox(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SigninOrSignupScreen(),
                  ));
                },
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
                  const SizedBox(width: kDefaultPadding / 4),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.color
                        ?.withOpacity(0.8),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
