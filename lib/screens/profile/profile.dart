import 'package:flutter/material.dart';

import '../../base/res/media.dart';
import '../../base/res/styles/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
          backgroundColor: AppStyles.bgColor
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppMedia.profile), // Replace with your profile image
            ),
            const SizedBox(height: 20),
            const Text(
              'Ankit Jha',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'ankit.jha@techchefz.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profile'),
              onPressed: () {
                // Implement edit profile functionality
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50), // Set the size of the button
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
              onPressed: () {
                // Implement logout functionality
              },
              style: ElevatedButton.styleFrom(
                iconColor: Colors.red,
                minimumSize: const Size(double.infinity, 50), // Set the size of the button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
