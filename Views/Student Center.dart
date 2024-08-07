// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:navapp/models/building_model.dart';

class StudentCenter extends StatelessWidget {
  const StudentCenter({super.key, required Building building});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudentCenter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Student Center.jpg',
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
                    title: Text('Step 1: Go to the Auditorium.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Turn right.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: Go down and turn left.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 4: Walk straight pass the audi canteen.'),
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

