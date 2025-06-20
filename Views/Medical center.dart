// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MedicalCenter extends StatelessWidget {
  const MedicalCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MedicalCenter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Medical Centre.jpg',
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
                    title: Text('Situated in between library and auditorium.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Go to the back of student center.'),
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

