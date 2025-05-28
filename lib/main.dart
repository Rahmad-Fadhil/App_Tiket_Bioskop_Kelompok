import 'package:flutter/material.dart';
// import 'package:kelompok_app_tiket_bioskop/Provider/provider.dart';
// import 'package:kelompok_app_tiket_bioskop/pages/historytiketpembelian.dart';
// import 'package:kelompok_app_tiket_bioskop/pages/home-2.dart';
// import 'package:kelompok_app_tiket_bioskop/pages/regist.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/home-2.dart';


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
      home: const HomeScreen(),
    );
  }
}
