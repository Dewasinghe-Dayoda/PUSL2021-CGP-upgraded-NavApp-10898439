// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOS_Events.dart';
import 'package:navapp/Views/FOS_Locations.dart';

import '../models/building_model.dart';



class FOS_Screen extends StatelessWidget {
  final Building building;

  const FOS_Screen({super.key, required this.building});

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
                      MaterialPageRoute(builder: (context) => FOS_Events(building: building)),
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
                        MaterialPageRoute(builder: (context) => FOS_Locations(building: building)));
                  },
                  child: const Text("Locations",
                    style: TextStyle(fontSize: 20),),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
