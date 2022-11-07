import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staticwebsite/components/profile_image_screen.dart';
import 'package:staticwebsite/components/profile_tile.dart';

import 'components/footer_screen.dart';
import 'components/header_screen.dart';
import 'components/info_palette_screen.dart';
import 'components/testimonial_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String image = 'https://images.unsplash.com/photo-1516357231954'
      '-91487b459602?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVu'
      'fDB8fHx8&auto=format&fit=crop&w=1172&q=80';

  String image1 = 'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7'
      '?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FyfGVufDB8fDB8fA%3D%'
      '3D&auto=format&fit=crop&w=500&q=60';

  String image2 = 'https://images.unsplash.com/photo-1493238792000-8113da705763'
      '?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnxlbnwwfHwwfHw%3D'
      '&auto=format&fit=crop&w=500&q=60';

  String image3 = 'https://images.unsplash.com/photo-1667723047494-b19cebb52706'
      '?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8UzRNS0xBc0JCNzR8fG'
      'VufDB8fHx8&auto=format&fit=crop&w=500&q=60';

  String donut = 'https://images.unsplash.com/photo-1552519507-'
      'da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB'
      '8fHx8&auto=format&fit=crop&w=1170&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 200.0,
                              left: 100.0,
                              child: Container(
                                height: 400.0,
                                width: 400.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Manage all your",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 38.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "projects in one place",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      width: 300.0,
                                      child: Text(
                                        "Describe your project and"
                                        " find a top talent team around the"
                                        " world or near you, Leave your "
                                        "E-mail to get invite for 30 days "
                                        "free trial",
                                        style: GoogleFonts.nunito(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30.0,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 45.0,
                                          width: 230.0,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Enter your email address",
                                                hintStyle: GoogleFonts.nunito(
                                                    fontSize: 12.0),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                )),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20.0,
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                                backgroundColor: Colors.black87,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                )),
                                            child: Container(
                                              height: 45.0,
                                              width: 100.0,
                                              child: Center(
                                                child: Text(
                                                  "Get Invite",
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 13.0,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 600.0,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                                top: 140.0,
                                left: 90.0,
                                diameter: 200.0,
                                image: image),
                            ProfileImage(
                                top: 160.0,
                                left: 310.0,
                                diameter: 100.0,
                                image: image1),
                            ProfileImage(
                                top: 275.0,
                                left: 280.0,
                                diameter: 280.0,
                                image: image3),
                            ProfileImage(
                                top: 350.0,
                                left: 90.0,
                                diameter: 170.0,
                                image: image2),
                            ProfileTile(
                                top: 380.0,
                                left: 50.0,
                                factor: 0.5,
                                title: 'I am gonna give you color theory',
                                subTitle: 'Scarlet, Designer'),
                            ProfileTile(
                                top: 140.0,
                                left: -10.0,
                                factor: 0.9,
                                title:
                                    "Photography is an Art, Let's do it ryt!",
                                subTitle: 'HarShell, Photographer'),
                            ProfileTile(
                                top: 160.0,
                                left: 380.0,
                                factor: 0.4,
                                title:
                                    "Photography is an Art, Let's do it ryt!",
                                subTitle: 'HarShell, Photographer'),
                            ProfileTile(
                                top: 240.0,
                                left: 440.0,
                                factor: 1.1,
                                title:
                                    "Photography is an Art, Let's do it ryt!",
                                subTitle: 'HarShell, Photographer'),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Header(),
                ],
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -200.0,
                      child: Container(
                        height: 330,
                        width: 430,
                        decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(300.0)),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "How it works",
                          style: GoogleFonts.nunito(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InfoPaletteScreen(
                              title: 'Community',
                              text:
                                  'Communicate with colleagues, share ideas, fina a team in project in one space',
                              icon: Icons.people_rounded,
                            ),
                            InfoPaletteScreen(
                              title: 'Overview Reports',
                              text:
                                  'Communicate with colleagues, share ideas, fina a team in project in one space',
                              icon: Icons.people_rounded,
                            ),
                            InfoPaletteScreen(
                              title: 'Dashboard',
                              text:
                                  'Communicate with colleagues, share ideas, fina a team in project in one space',
                              icon: Icons.people_rounded,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black87,
                              padding: const EdgeInsets.all(0.0),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  border:
                                      Border.all(color: Colors.grey.shade800)),
                              child: Text(
                                'Explore More',
                                style: GoogleFonts.nunito(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w800),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 500.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        left: -250,
                        child: Container(
                          height: 450.0,
                          width: 700.0,
                          decoration: BoxDecoration(
                              color: Colors.amber.shade400,
                              borderRadius: BorderRadius.circular(400.0)),
                        )),
                    Positioned(
                      top: 20.0,
                      left: 100.0,
                      child: Container(
                        height: 400.0,
                        width: 700.0,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Image.network(
                          donut,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ProfileTile(
                        top: -5.0,
                        left: 80.0,
                        factor: 1.0,
                        title: 'send a final design to the team',
                        subTitle: 'Sara, Client'),
                    ProfileTile(
                        top: 400.0,
                        left: 620.0,
                        factor: 1.0,
                        title: 'publish your project whenever you want',
                        subTitle: 'Shakeeb'),
                    Positioned(
                      right: 100.0,
                      top: 150.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Easy Project Management",
                            style: GoogleFonts.nunito(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            width: 280.0,
                            child: Text(
                              "Manage your projects, Organize your"
                              " own"
                              " workspace, Keep statistics and collaborate "
                              "with your teammates",
                              style: GoogleFonts.nunito(
                                  fontSize: 14.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.black87,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              child: Container(
                                height: 45.0,
                                width: 130.0,
                                child: Center(
                                  child: Text(
                                    "Try for free",
                                    style: GoogleFonts.nunito(
                                        fontSize: 13.0, color: Colors.white),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 600.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Stack(
                  children: [
                    Align(
                      child: Column(
                        children: [
                          Text(
                            "Be in the community",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800, fontSize: 25.0),
                          ),
                          Text(
                            "Meet new people and leave testimonials about your teammates",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0, 0.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  left: -70.0,
                                  top: -60.0,
                                  child: Icon(
                                    Icons.format_quote,
                                    size: 150.0,
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                Text(
                                  "Excellent",
                                  style: GoogleFonts.nunito(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: 360.0,
                              child: Text(
                                "To the Freelancer, I found a team for project during one i met a new specialist",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Comment details",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 14.0,
                              ),
                            ),
                            Container(
                              height: 1.5,
                              width: 100.0,
                              color: Colors.black87,
                            )
                          ],
                        ),
                      ),
                    ),
                    TestmonialTile(
                      image: image,
                      left: 780.0,
                      top: 100.0,
                      leftAlign: false,
                    ),
                    TestmonialTile(
                      image: image1,
                      left: 840.0,
                      top: 400.0,
                      leftAlign: false,
                    ),
                    TestmonialTile(
                      image: image2,
                      left: 440.0,
                      top: 400.0,
                      leftAlign: false,
                    ),
                    Positioned(
                      right: 350.0,
                      top: 200.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                            color: Colors.red[600],
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 10.0),
                                blurRadius: 10.0,
                              )
                            ]),
                      ),
                    ),
                    Positioned(
                      right: 200.0,
                      top: 270.0,
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 10.0),
                                blurRadius: 10.0,
                              )
                            ]),
                      ),
                    ),
                    Positioned(
                      right: 250.0,
                      top: 450.0,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: const Color(0xff373e98),
                            borderRadius: BorderRadius.circular(60.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 10.0),
                                blurRadius: 10.0,
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 600.0,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff373e98),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: Alignment(0.0, 1.0),
                      child: Container(
                        height: 600.0,
                        width: 400.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 80.0,
                            ),
                            Text(
                              "Get Started Today",
                              style: GoogleFonts.josefinSans(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.0,
                                  fontSize: 35.0,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Freelancer - Community of people who values their time",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(
                                              30.0),
                                        )),
                                    child: Container(
                                      height: 45.0,
                                      width: 100.0,
                                      child: Center(
                                        child: Text(
                                          "Get my price",
                                          style: GoogleFonts.nunito(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff373e98)),
                                        ),
                                      ),
                                    )),
                                const SizedBox(width: 20.0,),
                                TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.white),
                                          borderRadius:
                                          BorderRadius.circular(
                                              30.0),
                                        )),
                                    child: Container(
                                      height: 45.0,
                                      width: 100.0,
                                      child: Center(
                                        child: Text(
                                          "Try for free",
                                          style: GoogleFonts.nunito(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    const Positioned(
                      bottom: 0.0,
                      child: Footer(),
                    ),

                    Align(
                      alignment: const Alignment(1.18, 0.0),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 10.0
                            )
                          ]
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
