import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_tinder/models/sign_in_button_model.dart';
import 'package:mockup_tinder/theme/custom_theme.dart';
import 'package:mockup_tinder/widgets/logo_tinder_widget.dart';
import 'package:mockup_tinder/widgets/sign_in_list_widget.dart';
import 'package:mockup_tinder/widgets/terms_text_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      title: 'Tinder Mockup',
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gradient = CustomTheme.customGradient;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 18, left: 4),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
          size: MediaQuery.of(context).size.height * 0.04,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: gradient),
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                LogoTinderWidget(),
                Text('tinder', style: textTheme.displayLarge),
              ],
            ),
            SizedBox(height: 40),
            TermsTextWidget(),
            SizedBox(height: 10),
            SignInListWidget(
              loginButtons: [
                SignInButtonModel(
                  icon: Icons.apple,
                  text: 'SIGN IN WITH APPLE',
                ),
                SignInButtonModel(
                  icon: Icons.facebook,
                  text: 'SIGN IN WITH FACEBOOK',
                ),
                SignInButtonModel(
                  icon: Icons.chat_bubble_rounded,
                  text: 'SIGN IN WITH PHONE NUMBER',
                ),
              ],
            ),
            Text(
              'Trouble Signing In?',
              style: GoogleFonts.lato(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
