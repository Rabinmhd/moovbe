import 'package:flutter/material.dart';
import 'package:machine_test/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFC153B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(""),
            Image.asset(
              "assets/logo.png",
              height: 68,
              width: 205,
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    height: 50,
                    width: 200,
                    child: Center(
                      child: Text('Get Started',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(fontSize: 20)),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
