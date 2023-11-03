import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BusDetailsPage2 extends StatelessWidget {
  const BusDetailsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 119,
            width: 375,
            decoration: const BoxDecoration(
              color: Color(0xff2B2B2B),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 15,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      "KSRTC Swift scania p-series",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 116,
                  width: 335,
                  decoration: const BoxDecoration(
                    color: Color(0xff2B2B2B),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 6),
                            child: Text(
                              "Rohith sharma",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                            ),
                            child: Text(
                              "Lisence no:283683833",
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/driver.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 487,
            width: 283,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 34, top: 20),
                      child: Image.asset("assets/Seatblack.png"),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 50,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              "assets/Seat.png",
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: 30,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.asset(
                              "assets/Seat.png",
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
