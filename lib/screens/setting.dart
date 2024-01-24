import 'package:flutter/material.dart';
import 'package:flutter_appadmin/screens/sign_in.dart';

class AdminSettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: false, // Set your dark mode status here
                onChanged: (value) {
                  // Implement your dark mode toggle logic here
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Notification Preferences'),
              subtitle: Text('Configure your notification settings'),
              onTap: () {
                // Navigate to notification settings screen
              },
            ),
            Divider(),
            SizedBox(height: 20),
            Text(
              'Account Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Divider(),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AdminSignInScreen()));
                // Implement logout logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}