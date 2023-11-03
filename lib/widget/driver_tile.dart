import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/pages/bus_details_page.dart';

class DriverTile extends StatelessWidget {
  const DriverTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 74,
        width: 335,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 74,
              width: 79,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset("assets/Ellipse.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rohith sharma",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 14,
                    color: const Color(0xff6B6B6B),
                  ),
                ),
                Text(
                  "License :383647",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 14,
                    color: const Color(0xff6B6B6B),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BusDetailsPage(),
                ),
              ),
              child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xffFC153B)),
                  child: Center(
                    child: Text("Manage",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 10,
                          color: Colors.white,
                        )),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
