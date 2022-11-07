import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  double top;
  double left;
  double diameter;
  String image;

  ProfileImage(
      {Key? key,
      required this.top,
      required this.left,
      required this.diameter,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: diameter,
        width: diameter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
