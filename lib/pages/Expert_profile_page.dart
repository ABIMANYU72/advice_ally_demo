// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:advice_ally_demo/pages/Chat_page.dart';

class ExpertProfilePage extends StatefulWidget {
  // ignore: use_super_parameters
  const ExpertProfilePage({Key? key}) : super(key: key);

  @override
  ExpertProfilePageState createState() => ExpertProfilePageState();
}

class ExpertProfilePageState extends State<ExpertProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expert Profile'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Expert Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Expert Profession',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star, color: Colors.amber),
                        Icon(Icons.star_half, color: Colors.amber),
                        Icon(Icons.star_border, color: Colors.amber),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'I am a passionate and experienced professional with expertise in various fields such as technology, business strategy, and leadership. With a proven track record of delivering exceptional results, I strive to provide valuable insights and guidance to help individuals and organizations achieve their goals. My approach is collaborative, and I am dedicated to continuous learning and growth. Let\'s work together to unlock your full potential and drive success.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Areas of Expertise',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Chip(
                    label: Text('Category 1'),
                    backgroundColor: Colors.lightGreenAccent.withOpacity(0.3),
                  ),
                  Chip(
                    label: Text('Category 2'),
                    backgroundColor: Colors.lightGreenAccent.withOpacity(0.3),
                  ),
                  Chip(
                    label: Text('Category 3'),
                    backgroundColor: Colors.lightGreenAccent.withOpacity(0.3),
                  ),
                ],
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatInterfacePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Contact Expert',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
