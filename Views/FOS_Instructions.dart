// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOC_Computer_Labs.dart';
import 'package:navapp/Views/FOC_Study_Rooms.dart';
import 'package:navapp/Views/FOS_Lecture_Halls.dart';
import 'package:navapp/Views/OfficeRooms.dart';
import 'package:navapp/Views/RestRooms.dart';


class FOS_Intrcutions extends StatelessWidget {
  const FOS_Intrcutions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FOS Locations"),
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
                    builder: (context) =>  const FOS_Lecture_Halls(),
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
            width: 350,
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
                "Science Labs",
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
            width: 350,
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
            width: 350,
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

