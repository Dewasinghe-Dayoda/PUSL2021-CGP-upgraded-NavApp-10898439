import 'package:flutter/material.dart';
import 'package:navapp/Views/dean1.dart';
import 'package:navapp/Views/dean2.dart';
import 'package:navapp/Views/dean3.dart';
import 'package:navapp/Views/dean4.dart';
import 'package:navapp/Views/dean5.dart';


class Dean extends StatelessWidget {
  const Dean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faculty Deans"),
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
                    builder: (context) =>  const dean1(),
                  ),
                );
              },
              child: const Text(
                "Dean-FOC",
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
                    builder: (context) => const dean2(),
                  ),
                );
              },
              child: const Text(
                "Dean-FOB",
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
                    builder: (context) => const dean3(),
                  ),
                );
              },
              child: const Text(
                "Dean-FOP",
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
                    builder: (context) => const dean4(),
                  ),
                );
              },
              child: const Text(
                "Dean-FOE",
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
                    builder: (context) => const dean5(),
                  ),
                );
              },
              child: const Text(
                "Dean-FOS",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 20), // space between the buttons
          /*SizedBox(
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

