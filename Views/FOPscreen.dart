// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOP_Events.dart';
import 'package:navapp/Views/FOP_Locations.dart';

import '../models/building_model.dart';

class FOPScreen extends StatelessWidget {
  final Building building;

  const FOPScreen({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(building.name),
      ),
      body: Column(
        children: [
          Image.asset(building.imagePath),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(building.info),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FOP_Events(building: building)),
                  );
                },
                child: const Text("Events",
                  style: TextStyle(fontSize: 20),),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FOP_Locations(building: building)));
                },
                child: const Text("Locations",
                  style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
