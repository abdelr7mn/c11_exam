import 'package:flutter/material.dart';
import 'BookItem.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RecommendedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: 6,
        options: CarouselOptions(
          height: 365,
          autoPlay: true,
          viewportFraction: 1,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(seconds: 1),
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return BookItem(
            imageUrl: 'assets/images/Image Placeholder 2.png',
          );
        },
      ),
    );
  }
}
