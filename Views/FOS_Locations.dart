// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOS_Instructions.dart';
import 'package:navapp/pages/maps.dart';

import '../models/building_model.dart';


class FOS_Locations extends StatelessWidget {
  final Building building;

  const FOS_Locations({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(building.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WebViewContainer2()),
                  );
                },
                child: const Text("Live Map",
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
                      MaterialPageRoute(builder: (context) => const FOS_Intrcutions()));
                },
                child: const Text("Instructions",
                  style: TextStyle(fontSize: 20),),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
