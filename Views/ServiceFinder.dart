
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
        title: Text("Service Finder"),
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
              child: Text(
                "ATM",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20), // space between the buttons
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
              child: Text(
                "Medical Center",
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
                    builder: (context) => const DiningAlternatives(),
                  ),
                );
              },
              child: Text(
                "Dining services",
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
                    builder: (context) => const WiFi(),
                  ),
                );
              },
              child: Text(
                "WiFi",
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
                    builder: (context) => const AC(),
                  ),
                );
              },
              child: Text(
                "AC",
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
                    builder: (context) => const NSBM_Shop(),
                  ),
                );
              },
              child: Text(
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
