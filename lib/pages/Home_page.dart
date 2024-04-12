// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:advice_ally_demo/pages/Expert_Profile_Page.dart';
import 'package:advice_ally_demo/pages/Profile_page.dart';
import 'package:advice_ally_demo/pages/Calender_page.dart';
import 'package:advice_ally_demo/pages/My_Experts_page.dart';
import 'package:advice_ally_demo/pages/About_us_Page.dart';
import 'package:advice_ally_demo/pages/Contact_us_page.dart';
import 'package:advice_ally_demo/pages/Terms_of_service_pages.dart';
import 'package:advice_ally_demo/pages/Privacy_policy_page.dart';

class HomePage extends StatelessWidget {
  // ignore: use_super_parameters
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.lightGreenAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notification Settings',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Customize your notification preferences here.'),
                        SizedBox(height: 20),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text('Email Notifications'),
                          subtitle: Text('Receive email notifications'),
                          trailing: Switch(
                            value: true,
                            onChanged: (value) { },
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.notifications),
                          title: Text('Push Notifications'),
                          subtitle: Text('Receive push notifications'),
                          trailing: Switch(
                            value: true,
                            onChanged: (value) { },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.lightGreenAccent, Colors.greenAccent],
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              leading: Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileSettingsPage()),
                );
              },
            ),
            ListTile(
              title: Text('My Experts'),
              leading: Icon(Icons.people),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyExpertsPage()),
                );
              },
            ),
            ListTile(
              title: Text('Calendar'),
              leading: Icon(Icons.calendar_today),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.contact_mail),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),
            ListTile(
              title: Text('Terms of Service'),
              leading: Icon(Icons.assignment),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TermsOfServicePage()),
              );
              },
            ),
            ListTile(
              title: Text('Privacy Policy'),
              leading: Icon(Icons.privacy_tip),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
              );
              },
            ),
          ],
        ),
      ),
      body: ExpertListingPage(),
    );
  }
}

class ExpertListingPage extends StatefulWidget {
  // ignore: use_super_parameters
  const ExpertListingPage({Key? key}) : super(key: key);

  @override
  ExpertListingPageState createState() => ExpertListingPageState();
}

class ExpertListingPageState extends State<ExpertListingPage> {
  List<String> experts = ['Expert 1', 'Expert 2', 'Expert 3', 'Expert 4', 'Expert 5']; // Example list of experts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expert Listing'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for an Expert',
                filled: true,
                fillColor: Colors.lightGreenAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: experts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Card(
                      color: Colors.lightGreenAccent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person, color: Colors.black),
                        title: Text(
                          experts[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Expert Description'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ExpertProfilePage()), // Navigate to ExpertProfilePage
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
