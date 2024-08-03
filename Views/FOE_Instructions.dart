// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOC_Computer_Labs.dart';
import 'package:navapp/Views/FOC_Study_Rooms.dart';
import 'package:navapp/Views/FOE_Lecture_Halls.dart';
import 'package:navapp/Views/OfficeRooms.dart';
import 'package:navapp/Views/RestRooms.dart';


class FOE_instruction_Screen extends StatelessWidget {
  const FOE_instruction_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FOE Locations"),
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
                    builder: (context) =>  const FOE_Lecture_Halls(),
                  ),
                );
              },
              child: const Text(
                "LectureHalls",
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
                    builder: (context) => const FOC_Computer_Labs(),
                  ),
                );
              },
              child: const Text(
                "Computer Labs",
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
                    builder: (context) => const FOC_Study_Rooms(),
                  ),
                );
              },
              child: const Text(
                "Study Rooms",
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
                    builder: (context) => const RestRooms(),
                  ),
                );
              },
              child: const Text(
                "RestRooms",
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
                    builder: (context) => const OfficeRooms(),
                  ),
                );
              },
              child: const Text(
                "Office Rooms",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

