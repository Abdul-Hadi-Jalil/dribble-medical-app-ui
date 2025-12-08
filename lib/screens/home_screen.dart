import 'package:dribble_medical_app_ui/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            // appbar
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hey, ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Abdul Hadi Jalil',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // icon of profile picture
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.deepPurple[100],
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // card -> how do you feel
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 8, left: 20, right: 8),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Row(
                spacing: 40,
                children: [
                  // picture
                  Container(width: 100, height: 100, color: Colors.purple),

                  // how do you feel
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Fill out your medical card right now",
                          style: TextStyle(fontSize: 14),
                        ),

                        SizedBox(height: 8),

                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.shade300,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // search bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "How can we help you?",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            SizedBox(height: 25),

            // horizontal listview
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    text: 'Dentist',
                    iconImagePath: Image.asset(
                      'assets/icons/tooth.png',
                      height: 35,
                    ),
                  ),
                  CategoryCard(
                    text: 'Surgeon',
                    iconImagePath: Image.asset(
                      'assets/icons/surgeon.png',
                      height: 35,
                    ),
                  ),
                  CategoryCard(
                    text: 'Pharmacist',
                    iconImagePath: Image.asset(
                      'assets/icons/pharmacist.png',
                      height: 35,
                    ),
                  ),
                ],
              ),
            ),

            // doctor list
          ],
        ),
      ),
    );
  }
}
