import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            width: 100.0,
          ),
          const Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            "Freelancer",
            style: GoogleFonts.nunito(fontSize: 18.0, color: Colors.white),
          ),
          const SizedBox(width: 250.0),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HeaderNav(text: 'Home', selected: true),
                const SizedBox(
                  width: 40.0,
                ),
                HeaderNav(text: 'Find a Team', selected: false),
                const SizedBox(
                  width: 40.0,
                ),
                HeaderNav(text: 'Publish a Project', selected: false),
                const SizedBox(
                  width: 40.0,
                ),
                HeaderNav(text: 'About', selected: false),
              ],
            ),
          ),
          const SizedBox(width: 250.0,),
          Row(
            children: [
              Text(
                "Sign Up",
                style: GoogleFonts.nunito(fontSize: 13.0, color: Colors.white),
              ),
              const SizedBox(width: 10.0),
              Container(
                height: 20.0,
                width: 1.0,
                color: Colors.white,
              ),
              const SizedBox(width: 10.0),
              Text(
                "Log In",
                style: GoogleFonts.nunito(fontSize: 13.0, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HeaderNav extends StatelessWidget {
  String? text;
  bool? selected;

  HeaderNav({Key? key, required this.text, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text!,
          style: GoogleFonts.nunito(color: Colors.white, fontSize: 13.0),
        ),
        selected!
            ? const SizedBox(
                height: 5.0,
              )
            : const SizedBox(),
        selected!
            ? const CircleAvatar(
                radius: 2.0,
                backgroundColor: Colors.white,
              )
            : const SizedBox()
      ],
    );
  }
}
