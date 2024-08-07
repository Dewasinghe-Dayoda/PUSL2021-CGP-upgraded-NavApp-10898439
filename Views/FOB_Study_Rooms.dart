// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:navapp/Views/C2_L113.dart';

class FOB_Study_Rooms extends StatelessWidget {
  const  FOB_Study_Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" FOB Study Rooms "),
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
                    builder: (context) => const C2_L113(),
                  ),
                );
              },
              child: const Text(
                "C2-L113",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          /*SizedBox(height: 20), // space between the buttons
          SizedBox(
            width: 200,
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
              child: Text(
                "C2-009",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
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
              child: Text(
                "C2-003",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
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
              child: Text(
                "C1-001",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

         */
        ],
      ),
    );
  }
}
