import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/pages/bus_details_page.dart';

class BusTile extends StatelessWidget {
  const BusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset("assets/image 3.png"),
          ),
          Column(
            children: [
              Text(
                "KSRTC",
                style: GoogleFonts.aBeeZee(
                  fontSize: 14,
                  color: const Color(0xff6B6B6B),
                ),
              ),
              Text(
                "Swift scania p-series",
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
                )),
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
    );
  }
}
