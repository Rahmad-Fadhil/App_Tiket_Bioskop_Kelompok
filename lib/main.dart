import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/regist.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Register(),
    );
  }
}
