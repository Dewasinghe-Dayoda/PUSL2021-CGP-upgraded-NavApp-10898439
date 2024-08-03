// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import '../models/building_model.dart';

class FOS_Events extends StatelessWidget {
  final Building building;

  const FOS_Events({super.key, required this.building});

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
