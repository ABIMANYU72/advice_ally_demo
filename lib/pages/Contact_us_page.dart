// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: e22cseu1003@bennett.edu.in or e22cseu0993@bennett.edu.in'),
              onTap: () {
                // Implement email sending functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: +1234567890'),
              onTap: () {
                // Implement phone call functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Bennett university, Greater noida, UttarPradesh'),
              onTap: () {
                // Implement map navigation functionality
              },
            ),
            SizedBox(height: 20),
            Text(
              'Our Team',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(
                'Abimanyu.T',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'E22CSEU1003',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Priyanshu Sharma',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'E22CSEU0993',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
