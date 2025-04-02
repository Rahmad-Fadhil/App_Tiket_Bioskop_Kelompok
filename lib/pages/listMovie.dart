import 'package:flutter/material.dart';

class Listmovie extends StatelessWidget {
  const Listmovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Coming Soon Movie",  style: TextStyle(color: Colors.white)),
      ),
    );
  }
}