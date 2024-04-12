// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatefulWidget {
  // ignore: use_super_parameters
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  ProfileSettingsPageState createState() => ProfileSettingsPageState();
}

class ProfileSettingsPageState extends State<ProfileSettingsPage> {
  String name = 'User 1';
  String email = 'user@example.com';
  String phoneNumber = '+1234567890';
  String bio = 'I am a passionate individual striving for success.';
  bool isNotificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('Name'),
                subtitle: Text(name),
                trailing: Icon(Icons.edit, color: Colors.lightGreenAccent),
                onTap: () { },
              ),
              Divider(color: Colors.lightGreenAccent),
              ListTile(
                title: Text('Email'),
                subtitle: Text(email),
                trailing: Icon(Icons.edit, color: Colors.lightGreenAccent),
                onTap: () { },
              ),
              Divider(color: Colors.lightGreenAccent),
              ListTile(
                title: Text('Phone Number'),
                subtitle: Text(phoneNumber),
                trailing: Icon(Icons.edit, color: Colors.lightGreenAccent),
                onTap: () { },
              ),
              Divider(color: Colors.lightGreenAccent),
              SizedBox(height: 20),
              Text(
                'Bio',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(bio),
                trailing: Icon(Icons.edit, color: Colors.lightGreenAccent),
                onTap: () { },
              ),
              Divider(color: Colors.lightGreenAccent),
              SizedBox(height: 20),
              Text(
                'Account Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text('Change Password'),
                onTap: () { },
              ),
              Divider(color: Colors.lightGreenAccent),
              ListTile(
                title: Text(
                  'Delete Account',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () { },
              ),
              Divider(color: Colors.lightGreenAccent),
              SizedBox(height: 20),
              Text(
                'Notification Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                ),
              ),
              SwitchListTile(
                title: Text('Enable Notifications'),
                value: isNotificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    isNotificationsEnabled = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
