import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tugas2/pages/tiketfix.dart';

class tiketPesanan extends StatefulWidget {
  final String gambar;
  final String judul;
  final String genre;
  final String deskripsi;
  final double rating;

  const tiketPesanan({
    super.key,
    required this.gambar,
    required this.judul,
    required this.deskripsi,
    required this.genre,
    required this.rating
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
                          RatingBarIndicator(
                            rating: widget.rating ,
                            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                            itemCount: 5,
                            itemSize: 20.0,
                          ),
                          SizedBox(height: 6,),
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
                                context, MaterialPageRoute(builder: (context) =>TiketFix(genre:widget.genre,judul:widget.judul,))
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