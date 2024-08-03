// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class RestRooms extends StatelessWidget {
  const RestRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RestRooms Screen"),
      ),
      body: Center(
        child: Text(
          "Welcome to RestRooms Screen!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}