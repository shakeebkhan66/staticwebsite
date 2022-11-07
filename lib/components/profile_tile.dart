import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  double top;
  double left;
  double factor;
  String title;
  String subTitle;

  ProfileTile(
      {Key? key,
      required this.top,
      required this.left,
      required this.factor,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: Duration(milliseconds: 500),
      left: left,
      top: top,
      child: Container(
        padding: EdgeInsets.all(8.0 * factor),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 5.0 * factor),
              blurRadius: 5.0 * factor,
            )
          ]
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 12.0 * factor,
              backgroundColor: Colors.grey[800],
              child: const Icon(
                Icons.mail_outline_rounded,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunito(fontSize: 9.0 * factor, color: Colors.black),
                ),
                Text(
                  subTitle,
                  style: GoogleFonts.nunito(fontSize: 8.0 * factor, color: Colors.black87),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
