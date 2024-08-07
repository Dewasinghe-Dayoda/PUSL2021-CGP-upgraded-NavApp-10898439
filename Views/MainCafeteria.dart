// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../models/building_model.dart';

class MainCafeteria extends StatelessWidget {
  final Building building;

  const MainCafeteria({
    super.key,
    required this.building,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Cafeteria'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/assets/Main Cafeteria.jpg',
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
                    title: Text('Go to the Hostel complex.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('There are two canteens.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('1: Inside hostel complex-Hostel canteen.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text('2:Outside hostel complex- The edge canteen.'),
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
