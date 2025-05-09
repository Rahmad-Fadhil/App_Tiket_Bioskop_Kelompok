import 'package:flutter/material.dart';

class Listmovie extends StatefulWidget {
  const Listmovie({super.key});

  @override
  State<Listmovie> createState() => _ListmovieState();
}

class _ListmovieState extends State<Listmovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Text("In Theater Movie",  style: TextStyle(color: Colors.white)),
      ),
    );
  }
}