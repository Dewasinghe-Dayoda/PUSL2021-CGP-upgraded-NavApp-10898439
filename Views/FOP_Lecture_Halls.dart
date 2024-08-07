// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/C1_001.dart';
import 'package:navapp/Views/C2-009.dart';
import 'package:navapp/Views/C2_002.dart';
import 'package:navapp/Views/C2_003.dart';

class FOP_Lecture_Halls extends StatelessWidget {
  const FOP_Lecture_Halls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FOP Lecture Halls "),
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
            width: 350,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const C2_002(),
                  ),
                );
              },
              child: const Text(
                "C2-002",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20), // space between the buttons
          SizedBox(
            width: 350,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const C2_009(),
                  ),
                );
              },
              child: const Text(
                "C2-009",
                style: TextStyle(fontSize: 20),
              ),
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
                  MaterialPageRoute(
                    builder: (context) => const C2_003(),
                  ),
                );
              },
              child: const Text(
                "C2-003",
                style: TextStyle(fontSize: 20),
              ),
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
                  MaterialPageRoute(
                    builder: (context) => const C1_001(),
                  ),
                );
              },
              child: const Text(
                "C1-001",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
