import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Resources",
                      style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Publish a project",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Hell Shaki",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "CodeBase House",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "About",
                      style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Tariff",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "FAQ'S",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "About",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Free Tools",
                      style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Tariff",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "FAQ'S",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "About",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Legal",
                      style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "Tariff",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "FAQ'S",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      "About",
                      style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.copyright_rounded,
                color: Colors.black54,
                size: 15.0,
              ),
              Text(
                "2022 All rights reserved",
                style: GoogleFonts.nunito(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
