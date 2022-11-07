import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPaletteScreen extends StatelessWidget {

  String title;
  String text;
  IconData icon;

  InfoPaletteScreen({Key? key, required this.title, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12.0)
          ),
          child: Icon(
            icon,
            size: 22.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0,),
        Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: 18.0,
            fontWeight: FontWeight.w800
          ),
        ),
        const SizedBox(height: 15.0,),
        Container(
          width: 200.0,
          child: Text(
            text,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400,
              color: Colors.black54,
              fontSize: 14.0
            ),
          ),
        ),
        const SizedBox(height: 15.0,),
        Text(
          "learn More....",
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              fontSize: 14.0
          ),
        ),
        Container(
          height: 1.5,
          width: 90.0,
          color: Colors.black87,
        )
      ],
    );
  }
}
