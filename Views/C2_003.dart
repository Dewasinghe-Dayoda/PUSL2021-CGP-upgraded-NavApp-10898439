// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class C2_003 extends StatelessWidget {
  const C2_003({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C2_003'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/C2-003.jpg',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 1: Go to the ground floor.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Then go to B1.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: Turn right and walk in the corridor.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 4: Turn left in the middle of the corridor.'),
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

