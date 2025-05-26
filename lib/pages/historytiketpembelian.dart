import 'package:flutter/material.dart';

class TiketHistory extends StatefulWidget {
  const TiketHistory({super.key});

  @override
  State<TiketHistory> createState() => _TiketHistoryState();
}

class _TiketHistoryState extends State<TiketHistory> {

  tampilDialog(titleMovie, subtitle, time, price, seat, cinema) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(12),
          title: titleMovie,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 12,),
                      child: Text("Date", style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 12, bottom: 12),
                      child: subtitle,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 34,),
                      child: Text("Time", style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, right: 34, bottom: 12),
                      child: time,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 12,),
                      child: Text("seat", style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 12, bottom: 12),
                      child: seat,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 12),
                      child: Text("Price", style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, right: 12, bottom: 12),
                      child: price,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 12,),
                      child: Text("Cinema", style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, left: 12, bottom: 12),
                      child: cinema,
                    ),
                  ],
                ),
              ],
            )
          ],
          
          
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiket History"),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("THUNDERBOLTS"),
              subtitle: Text("26 Mei 2025        6.00 PM"),
              onTap: () {
                tampilDialog(
                  const Text("THUNDERBOLTS", style: TextStyle(fontSize: 22),), 
                  const Text("26 Mei 2025"),
                  const Text("6.00 PM"),
                  const Text("Rp.100.000"),
                  const Text("D6, D7"),
                  const Text("Cinema 21"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("Moana 2"),
              subtitle: Text("14 January 2025        8.00 PM"),
              onTap: () {
                tampilDialog(
                  const Text("Moana 2", style: TextStyle(fontSize: 22),), 
                  const Text("14 January 2025"),
                  const Text("8.00 PM"),
                  const Text("Rp.150.000"),
                  const Text("E6, E7, E8"),
                  const Text("Cinépolis"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("Fast & Furious"),
              subtitle: Text("25 Mei 2024        7.00 PM"),
              onTap: () {
                tampilDialog(
                  const Text("Fast & Furious", style: TextStyle(fontSize: 22),), 
                  const Text("25 Mei 2024"),
                  const Text("7.00 PM"),
                  const Text("Rp.250.000"),
                  const Text("G5, G6, G7, G8, G9"),
                  const Text("Cinema 21"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("Avengers: Endgame"),
              subtitle: Text("26 Juni 2023        13.00 PM"),
              onTap: () {
                tampilDialog(
                  const Text("Avengers: Endgame", style: TextStyle(fontSize: 22),), 
                  const Text("26 Juni 2023"),
                  const Text("13.00 PM"),
                  const Text("Rp.100.000"),
                  const Text("D6, D7"),
                  const Text("CGV Cinemas"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("Fast & Furious X"),
              subtitle: Text("20 Maret 2023        11.00 AM"),
              onTap: () {
                tampilDialog(
                  const Text("Fast & Furious X", style: TextStyle(fontSize: 22),), 
                  const Text("20 Maret 2023"),
                  const Text("11.00 AM"),
                  const Text("Rp.100.000"),
                  const Text("D1, D2"),
                  const Text("Cinemaxx"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("Jumbo"),
              subtitle: Text("18 January 2025        5.00 PM"),
              onTap: () {
                tampilDialog(
                  const Text("Jumbo", style: TextStyle(fontSize: 22),), 
                  const Text("18 January 2025"),
                  const Text("5.00 PM"),
                  const Text("Rp.150.000"),
                  const Text("F6, F7, F8"),
                  const Text("Cinépolis"),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_movies),
              title: Text("The Architecture of Love"),
              subtitle: Text("12 Mei 2024        6.00 PM"),
              onTap: () {
                tampilDialog(
                  const Text("The Architecture of Love", style: TextStyle(fontSize: 22),), 
                  const Text("12 Mei 2024"),
                  const Text("6.00 PM"),
                  const Text("Rp.200.000"),
                  const Text("H6, H7, H8, H9"),
                  const Text("Cinema 21"),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}