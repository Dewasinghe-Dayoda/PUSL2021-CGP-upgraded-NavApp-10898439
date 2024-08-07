// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AC extends StatelessWidget {
  const AC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/AC.jpg',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Available places:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('1:Lecture Halls.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('2:Study Rooms.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('3:Library.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('4:Computer Labs.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('5:Auditorium.'),
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

