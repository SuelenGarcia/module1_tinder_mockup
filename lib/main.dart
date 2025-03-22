import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 102, 104),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Icon(Icons.arrow_back_ios, color: Colors.white),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: 40,),
            Text(
              'By tapping Create Account or Sign In, you agree to our\n Terms. Learn how we process your data in our Privacy\n Policy and Cookies Policy.',
              style: GoogleFonts.lato(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 46,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 102, 104),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                spacing:70,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.apple, color: Colors.white, size: 24,),
                  ),
                  Text(
                    'SIGN IN WITH APPLE',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 46,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 102, 104),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing:60,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.facebook, color: Colors.white, size: 22,),
                  ),
                  Text(
                    'SIGN IN WITH FACEBOOK',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
               alignment: Alignment.center,
              height: 46,
              width: 350,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 102, 104),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                spacing:50,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.chat_bubble_rounded, color: Colors.white, size: 16,),
                  ),
                  Text(
                    'SIGN IN WITH PHONE NUMBER',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
