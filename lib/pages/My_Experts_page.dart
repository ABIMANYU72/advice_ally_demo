// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:advice_ally_demo/pages/Expert_profile_page.dart';

class MyExpertsPage extends StatefulWidget {
  // ignore: use_super_parameters
  const MyExpertsPage({Key? key}) : super(key: key);

  @override
  MyExpertsPageState createState() => MyExpertsPageState();
}

class MyExpertsPageState extends State<MyExpertsPage> {
  List<Map<String, dynamic>> favoriteExperts = [
    {
      'name': 'Expert 1',
      'description': 'Description of Expert 1',
      'isFavorite': false,
      'image': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Expert 2',
      'description': 'Description of Expert 2',
      'isFavorite': false,
      'image': 'https://via.placeholder.com/150',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Experts'),
      ),
      body: ListView.builder(
        itemCount: favoriteExperts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.lightGreenAccent,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(favoriteExperts[index]['image']),
                ),
                title: Text(
                  favoriteExperts[index]['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(favoriteExperts[index]['description']),
                trailing: IconButton(
                  icon: Icon(
                    favoriteExperts[index]['isFavorite'] ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      favoriteExperts[index]['isFavorite'] = !favoriteExperts[index]['isFavorite'];
                    });
                  },
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExpertProfilePage(),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
