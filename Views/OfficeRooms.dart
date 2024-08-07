// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/Dean.dart';
import 'package:navapp/Views/VC.dart';
import 'package:navapp/Views/departmentHd.dart';
import 'package:navapp/Views/examRegistrar.dart';

class OfficeRooms extends StatelessWidget {
  const OfficeRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Office Rooms"),
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
                    builder: (context) => const VC(),
                  ),
                );
              },
              child: const Text(
                "Vice Chancellor",
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
                    builder: (context) => const Dean(),
                  ),
                );
              },
              child: const Text(
                "Dean",
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
                    builder: (context) => const departmentHd(),
                  ),
                );
              },
              child: const Text(
                "Department.Hd",
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
                    builder: (context) => const exam_Registrar(),
                  ),
                );
              },
              child: const Text(
                "Exam Registrar",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          /*const SizedBox(height: 20),
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
                "Dep Secretary",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),*/

        ],
      ),
    );
  }
}

