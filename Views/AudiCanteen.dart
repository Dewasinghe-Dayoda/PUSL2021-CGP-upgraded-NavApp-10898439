// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AudiCanteen extends StatelessWidget {
  const AudiCanteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AudiCanteen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Auditorium.jpg',
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
                    title: Text('Situated in between auditorium and student center.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 1: Go to the auditorium back door and walk straight towards the students center.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Or, Go to student Center and walk straight toward the auditorium.'),
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

