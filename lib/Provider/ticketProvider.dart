import 'package:flutter/material.dart';

class TiketProvider with ChangeNotifier{
  final List<Map<String, String>> _tiketPesanan = [];

  List<Map<String, String>> get tiketPesanan => _tiketPesanan;

  void tambahTiket({
    required String judul,
    required String genre,
    required String tempat,
    required String tanggal,
    required String waktu,
  }) {
    _tiketPesanan.add({
      'judul': judul,
      'genre': genre,
      'tempat': tempat,
      'tanggal': tanggal,
      'waktu': waktu,
    });
    notifyListeners();
  }
}