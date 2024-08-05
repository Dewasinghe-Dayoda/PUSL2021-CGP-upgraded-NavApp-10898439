// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/Student%20Center.dart';
import 'package:navapp/Views/home.dart';
import 'package:navapp/models/building_model.dart';

class WiFi extends StatelessWidget {
  const WiFi({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a Building instance
    const building = Building(name: 'Student Center', imagePath: 'lib/assets/Student Center.jpg', info: '');

    return Scaffold(
      appBar: AppBar(
        title: const Text('WiFi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/wifi.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Available Places:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Available everywhere inside the university.'),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Study Rooms",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20), // space between the buttons
            SizedBox(
              width: 200, //
              height: 60, //
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(), // Replace with your desired screen
                    ),
                  );
                },
                child: const Text(
                  "Lecture Halls",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20), // space between the buttons
            SizedBox(
              width: 200, //
              height: 60, //
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentCenter(building: building),
                    ),
                  );
                },
                child: const Text(
                  "Student Center",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
