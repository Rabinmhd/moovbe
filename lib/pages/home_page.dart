import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/api.dart';
import 'package:machine_test/pages/bus_details_page_2.dart';
import 'package:machine_test/pages/driver_list.dart';
import 'package:machine_test/widget/bus_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Future<Map<String, dynamic>> fetchData(
      String username, String password) async {
    final response = await http.post(Uri.parse(baseUrl + loginApi),
        body: {'username': username, 'password': password});

    if (response.statusCode == 200) {
      //print(response.body);

      final loginData = await json.decode(response.body);
      return loginData;
    } else {
      throw Exception('Failed to load data');
    }
  }

//  0xff
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 119,
              width: 375,
              decoration: const BoxDecoration(
                color: Color(0xff2B2B2B),
              ),
              child: Image.asset("assets/logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19.0, left: 17, right: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BusDetailsPage2(),
                            )),
                        child: Container(
                          height: 176,
                          width: 156,
                          decoration: const BoxDecoration(
                            color: Color(0xffFC153B),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 6),
                                child: Text(
                                  "Bus",
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
                                  "Manage your bus",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/bus.png"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DriverList(),
                            )),
                        child: Container(
                          height: 176,
                          width: 156,
                          decoration: const BoxDecoration(
                            color: Color(0xff2B2B2B),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 6),
                                child: Text(
                                  "Rohith sharma",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, bottom: 5),
                                child: Text(
                                  "Manage your driver",
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset("assets/driver.png")),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 22,
                    ),
                    child: Text(
                      "21 Buses found",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 14,
                        color: const Color(0xff6B6B6B),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: ListView.separated(
                    itemBuilder: (context, index) => const BusTile(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 8,
                        ),
                    itemCount: 5),
              ),
            )
          ],
        ));
  }
}
