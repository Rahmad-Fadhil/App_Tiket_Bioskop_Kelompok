import 'package:flutter/material.dart';
import 'package:tugas2/pages/home-4.dart';
import 'package:tugas2/pages/homeeeee.dart';
import 'tiketfix.dart';

class HalamanTiketBerhasil extends StatelessWidget {
  final String judul;
  final String genre;
  final String tempat;
  final String tanggal;
  final String waktu;

  const HalamanTiketBerhasil({
    super.key,
    required this.judul,
    required this.genre,
    required this.tempat,
    required this.tanggal,
    required this.waktu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("Tiket Berhasil"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "🎟️ E-Ticket",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Divider(thickness: 1, color: Colors.grey),
              const SizedBox(height: 16),

              // Info
              _infoRow("🎬 Film", judul),
              _infoRow("📚 Genre", genre),
              _infoRow("📍 Tempat", tempat),
              _infoRow("🗓️ Tanggal", tanggal),
              _infoRow("⏰ Waktu", waktu),

              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 48),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context, 
                    MaterialPageRoute(builder: (context) =>HomeScreen()),
                    (route) => false,
                  );
                },
                child: const Text("Kembali ke Beranda"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(value, style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
