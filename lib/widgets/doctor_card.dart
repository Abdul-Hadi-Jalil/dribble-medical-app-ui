import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String rating;
  final String title;
  const DoctorCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.rating,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(left: 20, right: 10, bottom: 20),
      padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 20),
      child: Column(
        spacing: 3,
        children: [
          // picture
          ClipOval(
            child: SizedBox(
              width: 100,
              height: 100,
              child: FittedBox(
                fit: BoxFit.cover,
                alignment: Alignment(0, -1), // Adjust vertical position
                child: Image.asset(imagePath),
              ),
            ),
          ),

          // rating
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Text(rating, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),

          SizedBox(height: 8),

          // doctor name
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),

          // doctor title
          Text(title),
        ],
      ),
    );
  }
}
