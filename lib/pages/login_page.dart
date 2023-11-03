import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 266,
              width: 400,
              color: const Color(0xff2B2B2B),
              child: Stack(
                children: [
                  Image.asset("assets/Polygon.png"),
                  Positioned(
                    top: 127,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 41, color: Colors.white),
                        ),
                        Text(
                          "Manage your bus and drivers",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: Container(
                height: 58,
                width: 321,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Enter username",
                    hintStyle: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Container(
                height: 58,
                width: 321,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: "Enter password",
                    hintStyle: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 284),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )),
                child: Container(
                  height: 58,
                  width: 321,
                  decoration: BoxDecoration(
                    color: Color(0xffFC153B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
