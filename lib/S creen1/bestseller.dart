import 'package:flutter/material.dart';
import 'BookItem.dart';

class BestSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BookItem(
            imageUrl: 'assets/images/Image Placeholder 2.png',
          ),
          BookItem(
            imageUrl: 'assets/images/Image Placeholder 2.png',
          ),
          BookItem(
            imageUrl: 'assets/images/Image Placeholder 2.png', // Ensure you have this image in assets
          ),
        ],
      ),
    );
  }



}
