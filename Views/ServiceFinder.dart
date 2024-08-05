
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/AC.dart';
import 'package:navapp/Views/ATM.dart';
import 'package:navapp/Views/DiningAlternatives.dart';
import 'package:navapp/Views/Medical%20center.dart';
import 'package:navapp/Views/NSBM_Shop.dart';
import 'package:navapp/Views/WiFi.dart';

class ServiceFinder extends StatelessWidget {
  const ServiceFinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service Finder"),
      ),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ATM(),
                  ),
                );
              },
              child: const Text(
                "ATM",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20), // space between the buttons
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MedicalCenter(),
                  ),
                );
              },
              child: const Text(
                "Medical Center",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DiningAlternatives(),
                  ),
                );
              },
              child: const Text(
                "Dining services",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WiFi(),
                  ),
                );
              },
              child: const Text(
                "WiFi",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AC(),
                  ),
                );
              },
              child: const Text(
                "AC",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NSBM_Shop(),
                  ),
                );
              },
              child: const Text(
                "NSBM Shop",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
