import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

  mira(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AboutDialog(
          applicationName: "Aplikasi Pemesanan Tiket Bioskop",
          applicationVersion: "V.1.01",
          applicationIcon: Icon(Icons.info_outline, size: 40, color: Colors.deepOrange),
          children: [
            Text("Informasi Aplikasi:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 10),
            Text("• Pengembang: Kelompok Anak Baik", style: TextStyle(fontSize: 14)),
            SizedBox(height: 5),
            Text("• Tanggal Rilis: 28 Mei 2025", style: TextStyle(fontSize: 14)),
            SizedBox(height: 5),
            Text("• Ukuran Aplikasi: 24 MB", style: TextStyle(fontSize: 14)),
          ],
        );
      },
    );
  }

 
  infoKami(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AboutDialog(
          applicationName: "ABOUT US",
          applicationIcon: Icon(Icons.info_outline, size: 40, color: Colors.deepOrange),
          children: [
            SizedBox(height: 10),
            Text("Anggota Kelompok:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),             
            SizedBox(height: 10),
            Text("• Cindy Nathania", style: TextStyle(fontSize: 14)),
            SizedBox(height: 5),
            Text("• Miranda Nadilla Putri", style: TextStyle(fontSize: 14)),
            SizedBox(height: 5),
            Text("• Nailah Assyifa", style: TextStyle(fontSize: 14)),
            SizedBox(height: 5),
            Text("• Rahmad Fadhil", style: TextStyle(fontSize: 14)),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.info_outline, color: Colors.deepOrange),
                    SizedBox(width: 8),
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mira(context);
                    });
                  },
                  child: Text("About Application"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      infoKami(context);
                    });
                  },
                  child: Text("About Us"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
