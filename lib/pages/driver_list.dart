import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/pages/add_diver_page.dart';
import 'package:machine_test/widget/driver_tile.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 119,
            width: 375,
            decoration: const BoxDecoration(
              color: Color(0xff2B2B2B),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    "Driver list",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "21 drivers found",
              style: GoogleFonts.aBeeZee(
                fontSize: 14,
                color: const Color(0xff6B6B6B),
              ),
            ),
          ),
          Container(
            height: 500,
            child: ListView.separated(
                itemBuilder: (context, index) => DriverTile(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: 21),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddDriver(),
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
                        "Add Driver",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
