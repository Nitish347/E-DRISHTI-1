import 'dart:ui';
import 'dart:math' as math;
import 'package:e_drishti/place.dart';
import 'package:flutter/material.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  const PlaceItem({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: place.height,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2.0, 2.0), //(x,y)
            blurRadius: 3.0,
          ),
        ],
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
        colors: [Color(0xffC9E9FF),Color(0xffA4DAFF), Color(0xff53B9FF)],
        // begin: const FractionalOffset(0.0, 0.0),
        // end: const FractionalOffset(0.5, 0.0),
        stops: [
          0.0,
          0.3,
          0.7
          ],
    begin: Alignment(-1.0, 0.0),
    end: Alignment(1.0, 0.0),
    // colors: [],
    // stops: [],
    transform: GradientRotation(math.pi / 4),
      ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(place.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(place.title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,),
            ),
          ),
        ],
      ),
    );
  }
}
