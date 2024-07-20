import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
   String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text('See more',style: TextStyle(color: Color(0xff4838D1),),),
        ),
      ],
    );
  }
}