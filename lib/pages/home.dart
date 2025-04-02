import 'package:flutter/material.dart';
import 'package:kelompok_app_tiket_bioskop/pages/detailMovie.dart';
import 'package:kelompok_app_tiket_bioskop/pages/listMovie.dart';

class HomeScreen extends StatelessWidget {
  List<Map<String, dynamic>> daftarMovie = [
    {
      'Gambar':"assets/1 (1).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (2).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (3).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (4).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (5).jpg",
      'judul': 'Fast & Furious 9',
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
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (8).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (9).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (10).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (1).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (2).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (3).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (4).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (5).jpg",
      'judul': 'Fast & Furious 9',
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
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (8).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (9).jpg",
      'judul': 'Fast & Furious 9',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (10).jpg",
      'judul': 'Fast & Furious 9',
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
        title: Text(
          "TIX CINEMA"
          , style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu),  color: Colors.white)
        ],
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
                  height: 250,
                  child: ListView.builder( // untuk scroll secara horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarMovie.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                          child: 
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Detailmovie()));
                              },
                              child: Container(
                                height: 230,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(daftarMovie[index]['Gambar']),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                            ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promo",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder( // untuk scroll secara horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarMovie.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                          child: 
                            Container(
                              height: 230,
                              width: 380,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/1 (5).jpg'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 22,
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
                  height: 250,
                  child: ListView.builder( // untuk scroll secara horizontal
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarMovie.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                          child: 
                            Container(
                              height: 230,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(daftarMovie[index]['Gambar']),
                                  fit: BoxFit.cover
                                )
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