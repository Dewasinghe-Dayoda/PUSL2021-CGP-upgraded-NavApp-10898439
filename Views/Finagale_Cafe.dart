// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Finagale_Cafe extends StatelessWidget {
  const Finagale_Cafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finagale Cafe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Finagale.jpg',
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
                    title: Text('Step 1: Go to the ground floor of FOC'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Go to B1.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: Walk straight towards the exit door.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 4:Finagale afe will be on yor left side riht after you pass the study room.'),
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

