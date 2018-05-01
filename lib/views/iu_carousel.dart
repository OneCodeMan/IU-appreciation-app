import 'package:flutter/material.dart';
import 'package:carousel/carousel.dart';

class IUCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Carousel(
        children: [
          new AssetImage('images/iu_carousel_1.jpg'),
          new AssetImage('images/iu_carousel_2.jpg'),
          new AssetImage('images/iu_carousel_3.jpg'),
        ].map((bgImg) => 
          new Image(image: bgImg, width: 1500.0, height: 1500.0, fit: BoxFit.cover))
          .toList(),
        displayDuration: const Duration(seconds: 5),
        animationCurve: Curves.ease,
        animationDuration: const Duration(seconds: 3),
        
      ),
    );
  }
}