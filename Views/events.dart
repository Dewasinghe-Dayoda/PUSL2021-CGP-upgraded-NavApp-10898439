import 'package:flutter/material.dart';
import 'package:navapp/Views/web_view_container.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventState();
}

class _EventState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Events"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: ElevatedButton(onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WebViewContainer()));
      }, child: const Text("View Events")),
    );
  }
}