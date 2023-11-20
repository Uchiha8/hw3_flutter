import 'package:flutter/material.dart';
import 'settings.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String firstName;
  final String lastName;
  final String email;

  const ProfilePage({
    Key? key,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/portrait-white-man-isolated.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              '$firstName $lastName',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Username: $username',
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(
                      username: username,
                      firstName: firstName,
                      lastName: lastName,
                      email: email,
                    ),
                  ),
                );
              },
              child: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}