// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/AudiCanteen.dart';
import 'package:navapp/Views/Edge.dart';
import 'package:navapp/Views/HostelCanteen.dart';

class Canteen extends StatelessWidget {
  const Canteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canteen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Main Cafeteria.jpg',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Featured Places:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height:20),
            const Text('WiFi Connection is Available'),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Edge(),
                    ),
                  );
                },
                child: const Text(
                  "Edge Cateen",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20), //space between the buttons
            SizedBox(
              width: 200, //
              height: 60, //
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HostelCanteen(), // Replace with your desired screen
                    ),
                  );
                },
                child: const Text(
                  "Hostel Canteen",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20), //space between the buttons
            SizedBox(
              width: 200, //
              height: 60, //
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AudiCanteen(), // Replace with your desired screen
                    ),
                  );
                },
                child: const Text(
                  "AudiCanteen",
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

