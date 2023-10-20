import 'package:flutter/material.dart';
import 'package:flutterchat/components/primary_button.dart';
import 'package:flutterchat/constants.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light.png'
                    : 'assets/images/Logo_dark.png',
                height: 146,
              ),
              const Spacer(flex: 1),
              PrimaryButton(
                text: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                text: "Sign Up",
                color: Theme.of(context).colorScheme.secondary,
                onPressed: () {},
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
