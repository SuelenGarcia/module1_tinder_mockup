import 'package:flutter/material.dart';
import 'package:mockup_tinder/models/sign_in_button_model.dart';
import 'package:mockup_tinder/widgets/sign_in_button_widget.dart';

class SignInListWidget extends StatelessWidget {
  final List<SignInButtonModel> loginButtons;

  const SignInListWidget({super.key, required this.loginButtons});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: loginButtons.map((loginButtons) {
        return Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: SignInButtonWidget(signInButtonModel: loginButtons),
      );}).toList(),
    );
  }
}