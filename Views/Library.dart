
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../models/building_model.dart';

class Library extends StatelessWidget {
  final Building building;

  const Library({
    super.key,
    required this.building,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Library.jpg',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Situated between Admin building and student center.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 1:Go in front of the pond.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Choose the building between amn building and student center.'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



