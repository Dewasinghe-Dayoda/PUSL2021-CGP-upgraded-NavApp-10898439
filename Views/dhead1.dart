// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:navapp/Views/SE.dart';

class dhead1 extends StatelessWidget {
  const dhead1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Head of Department"),
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
                    builder: (context) =>  const SE(),
                  ),
                );
              },
              child: const Text(
                "Department of Software Engineering & Information Systems",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

          const SizedBox(height: 20),
          /*SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const dhead2(),
                  ),
                );
              },
              child: const Text(
                "FOB",
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
                    builder: (context) => const dhead3(),
                  ),
                );
              },
              child: const Text(
                "FOP",
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
                    builder: (context) => const dhead4(),
                  ),
                );
              },
              child: const Text(
                "FOE",
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
                    builder: (context) => const dhead5(),
                  ),
                );
              },
              child: const Text(
                "FOS",
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

          */
        ],
      ),
    );
  }
}

