// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/Canteen.dart';
import 'package:navapp/Views/Finagale_Cafe.dart';
import 'package:navapp/Views/FoodCity.dart';
import 'package:navapp/Views/VendingMachine.dart';

class DiningAlternatives extends StatelessWidget {
  const DiningAlternatives({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dining Services "),
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
                    builder: (context) => const Canteen(),
                  ),
                );
              },
              child: const Text(
                "Canteen",
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
                    builder: (context) => const FoodCity(),
                  ),
                );
              },
              child: const Text(
                "Food City",
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
                    builder: (context) => const VendingMachine(),
                  ),
                );
              },
              child: const Text(
                "VendingMachine",
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
                    builder: (context) => const Finagale_Cafe(),
                  ),
                );
              },
              child: const Text(
                "Finagle Cafe",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
