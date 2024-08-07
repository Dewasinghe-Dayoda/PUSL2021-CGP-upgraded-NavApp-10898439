// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VendingMachine extends StatelessWidget {
  const VendingMachine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vending Machine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/VendingMachine.jpg',
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
                    title: Text('Step 1: Go to the auditorium'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 2: Turn right.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 3: Go one floor down.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 4: ATM is on your left side.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('Step 5: If you walk straight from there towards student center, there will be another ATM on your left.'),
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

