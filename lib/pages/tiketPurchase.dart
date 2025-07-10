import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/ticketProvider.dart';
import 'package:tugas2/pages/pesantiket.dart';
import 'home-4.dart';

class PurchaseHistoryPage extends StatefulWidget {
  const PurchaseHistoryPage({super.key});

  @override
  State<PurchaseHistoryPage> createState() => _PurchaseHistoryPageState();
}

class _PurchaseHistoryPageState extends State<PurchaseHistoryPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Simulasi data tiket yang sudah dibeli
  final List<Map<String, String>> tiketDipesan = [
    {
      'judul': 'Avengers: Endgame',
      'genre': 'Action',
      'tempat': 'Cinema XXI - Centre Point Mall Medan',
      'tanggal': 'hari: Jumat  tanggal: 12',
      'waktu': '14:30',
    },
    {
      'judul': 'Frozen II',
      'genre': 'Animation',
      'tempat': 'Thamrin XXI',
      'tanggal': 'hari: Minggu  tanggal: 21',
      'waktu': '19:00',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget buildTiketCard(Map<String, String> tiket) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🎬 ${tiket['judul']!}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("📚 Genre: ${tiket['genre']!}"),
            Text("📍 Tempat: ${tiket['tempat']!}"),
            Text("🗓️ Tanggal: ${tiket['tanggal']!}"),
            Text("⏰ Waktu: ${tiket['waktu']!}"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dynamicTiket = Provider.of<TiketProvider>(context).tiketPesanan;
    final semuaTiket = [...tiketDipesan, ...dynamicTiket];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pesanan Saya"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.red,
          tabs: const [
            Tab(text: "Sudah Dipesan"),
            Tab(text: "Dibatalkan"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab 1: Sudah Dipesan
          semuaTiket.isEmpty
              ? const Center(child: Text("Belum ada tiket yang dipesan."))
              : ListView.builder(
                  itemCount: semuaTiket.length,
                  itemBuilder: (context, index) => buildTiketCard(semuaTiket[index]),
                ),

          // Tab 2: Dibatalkan
          const Center(
            child: Text("Belum ada tiket yang dibatalkan."),
          ),
        ],
      ),
    );
  }
}
