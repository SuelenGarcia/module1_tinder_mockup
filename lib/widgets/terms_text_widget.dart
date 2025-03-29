import 'package:flutter/material.dart';
import 'package:mockup_tinder/theme/custom_theme.dart';

class TermsTextWidget extends StatelessWidget {
  const TermsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final bodyMediumTheme = textTheme.bodyMedium;
    final labelMediumTheme = textTheme.labelMedium;

    return Center(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: 'By tapping Create Account or Sign In, you agree to our\n',
              style: bodyMediumTheme,
            ),
            TextSpan(text: 'Terms.', style: labelMediumTheme,),
            TextSpan(
              text: ' Learn how we process your data in our ',
              style: bodyMediumTheme,
            ),
            TextSpan(text: 'Privacy\n Policy', style: labelMediumTheme,),
            TextSpan(text: ' and ', style: bodyMediumTheme,),
            TextSpan(text: 'Cookies Policy.', style: labelMediumTheme,),
          ],
        ),
      ),
    );
  }
}
