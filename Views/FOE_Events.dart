// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import '../models/building_model.dart';

class FOE_Events extends StatelessWidget {
  final Building building;

  const FOE_Events({super.key, required this.building});

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
