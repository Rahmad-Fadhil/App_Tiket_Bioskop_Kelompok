import 'package:flutter/material.dart';

class Detailmovie extends StatelessWidget {
  const Detailmovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Detail Movie", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}