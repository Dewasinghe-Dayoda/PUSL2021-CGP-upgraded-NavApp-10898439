// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RestRooms extends StatelessWidget {
  const RestRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RestRooms'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/restrooms.jpg',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height:20),
            const Text('The corridor feature 2 restrooms, one at each end '),

            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('1: Ground Floor - right corner from the main door'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('2: B1 - Right corner of the building.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('3: B2 - Right corner of the building'),
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

