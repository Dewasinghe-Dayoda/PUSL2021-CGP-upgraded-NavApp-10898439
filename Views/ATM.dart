// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ATM extends StatelessWidget {
  const ATM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATM'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/atm.jpg',
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
                    title: Text('Step 1: Go to the auditorium.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Go down.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: Turn Left.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 4: If you walk straight pass the audi canteen and walk towards student center there will be another ATM.'),
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

