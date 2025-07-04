// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../models/building_model.dart';

class PlayGround extends StatelessWidget {
  final Building building;

  const PlayGround({
    super.key,
    required this.building,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Playground.jpg',
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
                    title: Text('Step 1: Go to the main entrance.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Face the main building/auditorium.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: turn right.'),
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


