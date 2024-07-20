import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String imageUrl;

  BookItem({ required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 300,
            width: 200,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}