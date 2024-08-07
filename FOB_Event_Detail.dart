// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class FOB_Event_Detail extends StatelessWidget {
  final Map<String, String> event;

  const FOB_Event_Detail({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event['title']!),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First image
            Container(
              height: 200,
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(event['image1']!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Second image
            // First information block
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: Text(
                event['details']!,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(event['image2']!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Second information block
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: const Text(
                'Additional details about the event...',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
