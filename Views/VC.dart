// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VC extends StatelessWidget {
  const VC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vice Chancellor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/vc.jpeg',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Prof.E.A.Weerasinghe ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 1: Go to the Admin Building.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Go to 2 nd floor.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: Turn Left.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 4: Turn left.Walk straight and turn left again at the front of the washroom.'),
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

