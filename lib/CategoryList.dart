import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories = ['Art', 'Business', 'Comedy', 'Drama','Sport','Actions'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map((category) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Chip(
            label: Text(category),
          ),
        ))
            .toList(),
      ),
    );
  }
}

