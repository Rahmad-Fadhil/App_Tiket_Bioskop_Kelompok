import 'package:flutter/material.dart';
import 'package:kelompok_app_tiket_bioskop/pages/login.dart';
import 'package:kelompok_app_tiket_bioskop/pages/listMovie.dart';
import 'package:kelompok_app_tiket_bioskop/pages/profil.dart';

class HomeScreen extends StatelessWidget {
  List<String> daftarTrending = ["assets/1 movie info.jpg", "assets/2 movie info.jpg", "assets/3 movie info.jpg", "assets/4 movie info.jpg", "assets/5 movie info.jpg"];
  List<Map<String, dynamic>> daftarMovie = [
    {
      'Gambar':"assets/1 (1).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (2).jpg",
      'judul': 'Fast & Furious X',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (3).jpg",
      'judul': "Doraemon: Nobita's Sky Utopia",
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (4).jpg",
      'judul': 'Doraemon: Nobita dan Pahlawan Luar Angkasa',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (5).jpg",
      'judul': 'Avengers: Endgame',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (6).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (7).jpg",
      'judul': 'Fast & Furious 7',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (8).jpg",
      'judul': 'Moana 2',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (9).jpg",
      'judul': 'Doraemon Great Adventure in the Antarctic kachi kochi',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (10).jpg",
      'judul': "Doraemon: Nobita's Earth Symphony",
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
  ];

  HomeScreen ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Text(
          "TIX CINEMA"
          , style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [PopupMenuButton(itemBuilder: (context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
              },
              child: Text("Profil"),
            ),
            PopupMenuItem(
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('Logout'),
            ),
          ];
        },)]
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                TextField(
                  style: TextStyle(fontSize: 16),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(14),
                    hintText: 'Enter a Search'
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coming soon",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Listmovie()));
                      }, child: Text('More')
                    )
                  ],
                ),
                SizedBox(
                  height: 264,
                  child: ListView.builder( // untuk scroll secara horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarMovie.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                          child: 
                            SizedBox(
                              width: 140,
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(daftarMovie[index]['Gambar']),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    daftarMovie[index]['judul'],
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder( // untuk scroll secara horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarTrending.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                          child: 
                            Container(
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(daftarTrending[index]),
                                  fit: BoxFit.fitHeight
                                )
                              ),
                            ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "In Theater",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Listmovie()));
                      }, child: Text('More')
                    )
                  ],
                ),
                SizedBox(
                  height: 264,
                  child: ListView.builder( // untuk scroll secara horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarMovie.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                          child: 
                            SizedBox(
                              width: 140,
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(daftarMovie[index]['Gambar']),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    daftarMovie[index]['judul'],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  )
                                ],
                              ),
                            ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ) 
    );
  }
}