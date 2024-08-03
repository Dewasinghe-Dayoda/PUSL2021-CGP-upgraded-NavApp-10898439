// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../models/building_model.dart';

class FOCEventsScreen extends StatelessWidget {
  final Building building;

  const FOCEventsScreen({super.key, required this.building});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${building.name} "),
      ),
      body: Center(
        child: Text("Event details for ${building.name}"),
      ),
    );
  }
}
