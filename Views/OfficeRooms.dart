// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class OfficeRooms extends StatelessWidget {
  const OfficeRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OfficeRooms Screen"),
      ),
      body: Center(
        child: Text(
          "Welcome to OfficeRooms Screen!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
