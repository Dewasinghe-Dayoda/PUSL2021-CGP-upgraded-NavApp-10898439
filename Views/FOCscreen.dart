// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOC_Event_Screen.dart';
import 'package:navapp/Views/FOC_Location_Screen.dart';

import '../models/building_model.dart';

class FOCScreen extends StatelessWidget {
  final Building building;

  const FOCScreen({super.key, required this.building});

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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FOCEventsScreen(building: building)),
                    );
                  },
                  child: const Text("Events",
                    style: TextStyle(fontSize: 20),),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FOCLocationsScreen(building: building)));
                  },
                  child: const Text("Locations",
                    style: TextStyle(fontSize: 20),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
