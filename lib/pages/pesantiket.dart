import 'package:flutter/material.dart';
import 'package:tugas2/pages/tiketfix.dart';

class tiketPesanan extends StatefulWidget {
  final String gambar;
  final String judul;
  final String genre;
  final String deskripsi;

  const tiketPesanan({
    super.key,
    required this.gambar,
    required this.judul,
    required this.deskripsi,
    required this.genre,
  });

  @override
  State<tiketPesanan> createState() => _tiketPesananState();
}

class _tiketPesananState extends State<tiketPesanan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children:[
                  Center(
                    child: Image.network(
                      widget.gambar,
                      fit: BoxFit.cover
                    ),
                  ),
                  Positioned(
                    top: 525,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 240,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24), 
                          topRight: Radius.circular(24)
                        ),
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Text(
                            widget.judul,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold 
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            widget.genre,
                            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                          ),
                          SizedBox(height: 12,),
                          Text(
                            widget.deskripsi,
                          ),
                          SizedBox(height: 16,),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>TiketFix())
                              );
                            }, 
                            child: Text("Pesan Tiket"),
                          )
                        ],
                      )
                    ),
                  )
                ] 
              ),
            ],
          ),
        ]
      ),
    );
  }
}