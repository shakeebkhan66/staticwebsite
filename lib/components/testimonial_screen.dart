import 'package:flutter/material.dart';

class TestmonialTile extends StatelessWidget {
  String image;
  double top;
  double left;
  bool leftAlign;

  TestmonialTile(
      {Key? key,
      required this.image,
      required this.top,
      required this.left,
      required this.leftAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 28.0,
            backgroundImage: NetworkImage(
              image,
            ),
          ),
          Positioned(
            left: -80.0,
            child: Container(
              height: 20.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 5.0))
                  ]),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.amber.shade400,
                    child: const Icon(Icons.favorite_rounded, color: Colors.white, size: 15.0,),
                  ),
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 15.0,),
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 15.0,),
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 15.0,),
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 15.0,),
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 15.0,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
