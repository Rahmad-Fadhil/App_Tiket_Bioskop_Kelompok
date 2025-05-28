import 'package:flutter/material.dart';
import 'package:kelompok_app_tiket_bioskop/Provider/provider.dart';
import 'package:kelompok_app_tiket_bioskop/pages/historytiketpembelian.dart';
import 'package:kelompok_app_tiket_bioskop/pages/regist.dart';
import 'package:kelompok_app_tiket_bioskop/pages/settings.dart';
// import 'package:kelompok_app_tiket_bioskop/pages/regist.dart';
import 'package:provider/provider.dart';
import 'pages/settings.dart';


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
      home: const Settings(),
    );
  }
}
