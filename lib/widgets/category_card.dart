import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final Image iconImagePath;
  const CategoryCard({
    super.key,
    required this.text,
    required this.iconImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [iconImagePath, Text(text)],
      ),
    );
  }
}
