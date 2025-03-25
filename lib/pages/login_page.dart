import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockup_tinder/models/sign_in_button_model.dart';
import 'package:mockup_tinder/theme/custom_theme.dart';
import 'package:mockup_tinder/widgets/sign_in_list_widget.dart';

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
        decoration: BoxDecoration(gradient: LinearGradient(
        begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 235, 94, 107),
              Color.fromARGB(255, 237, 114, 99),
            ],
          ),
        ),
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
                Stack(
                  children: [ 
                    // Container(
                    //   height: 60,
                    //   width: 40,
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.rectangle,
                    //     borderRadius: BorderRadius.circular(50),
                    //     color: Colors.white,
                    //   ),
                    // ),
                    // Transform.rotate(
                    //   alignment: Alignment.topRight,
                    //   angle: -40,
                    //   child: Container(
                    //     height: 40,
                    //     width: 36,
                    //     decoration: BoxDecoration(
                    //       color: Color.fromARGB(255, 236, 102, 104),
                    //       shape: BoxShape.rectangle,
                    //       borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(100), bottomLeft: Radius.circular(100), bottomRight: Radius.elliptical(50, 10),)),
                    //     ),
                    //   ),
                  ],
                ),
                Text(
                  'tinder',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'By tapping Create Account or Sign In, you agree to our\n Terms. Learn how we process your data in our Privacy\n Policy and Cookies Policy.',
                style: GoogleFonts.lato(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            SignInListWidget(
              loginButtons: [
                SignInButtonModel(
                  icon: Icons.apple,
                  text: 'SIGN IN WITH APPLE',
                ),
                SignInButtonModel(icon: Icons.facebook, text: 'SIGN IN WITH FACEBOOK'),
                SignInButtonModel(icon: Icons.chat_bubble_rounded, text: 'SIGN IN WITH PHONE NUMBER'),
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
