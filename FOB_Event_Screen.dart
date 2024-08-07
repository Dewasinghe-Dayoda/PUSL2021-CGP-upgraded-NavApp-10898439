// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navapp/Views/FOB_Event_Detail.dart';

import '../models/building_model.dart';

class FOB_Event_Screen extends StatelessWidget {
  final Building building;

  const FOB_Event_Screen({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    // Sample events for demonstration
    final List<Map<String, String>> events = [
      {
        'title': 'Enterprise 24′ unfolds as part of CREST programme',
        'image1': 'lib/assets/fobevents1.jpg',
        'image2': 'lib/assets/fobvents2.webp',
        'details': 'Details about ICTAR 2024...'
      },
      {
        'title': 'Department of Marketing and Tourism Management inaugurates all its student circles',
        'image1': 'lib/assets/fobevents3.webp',
        'image2': 'lib/assets/fobevents4.jpeg',
        'details': 'Details about Advanced Computing Technologies 2024...'
      },
      {
        'title': 'Third Chapter of Economic Knowledge Park ',
        'image1': 'lib/assets/FOB.jpg',
        'image2': 'lib/assets/fobevents4.jpeg',
        'details': 'Details about TIDAC Research Symposium...'
      },
      /* {
        'title': 'Lunch at 12 PM',
        'image1': 'assets/event4.jpg',
        'image2': 'assets/event4_2.jpg',
        'details': 'Details about Lunch at 12 PM...'
      },
      {
        'title': 'Dinner at 7 PM',
        'image1': 'assets/event5.jpg',
        'image2': 'assets/event5_2.jpg',
        'details': 'Details about Dinner at 7 PM...'
      }*/
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("${building.name} Events"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FOB_Event_Detail(event: event),
                ),
              );
            },
            child: Container(
              height: 200, // Fixed height for each event block
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(event['image1']!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        event['title']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
