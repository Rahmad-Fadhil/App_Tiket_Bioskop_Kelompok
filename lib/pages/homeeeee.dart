import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/commingsoon.dart';
import 'package:tugas2/pages/listMovie.dart';
import 'package:tugas2/pages/pesantiket.dart';

class homeeeee extends StatefulWidget {
  const homeeeee({super.key});

  @override
  State<homeeeee> createState() => _homeeeeeState();
}

class _homeeeeeState extends State<homeeeee> {
  String selectedGenre = 'All';
  List<String> genres = ['All', 'Action', 'Drama', 'Comedy', 'Romantic'];

  List<String> daftarTrending = [
    "https://image.tmdb.org/t/p/w780/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg",
    "https://image.tmdb.org/t/p/w780/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
    "https://image.tmdb.org/t/p/w780/p1F51Lvj3sMopG948F5HsBbl43C.jpg",
    "https://image.tmdb.org/t/p/w780/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg"
  ];

  List<Map<String, dynamic>> daftarMovie = [
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
      'judul': 'Spider-Man: No Way Home',
      'genre': 'Action',
      'deskripsi': 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/62HCnUTziyWcpDaBO2i1DX17ljH.jpg",
      'judul': 'Top Gun: Maverick',
      'genre': 'Action',
      'deskripsi': 'After more than thirty years of service as one of the Navy\'s top aviators, Pete Mitchell is where he belongs.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg",
      'judul': 'Black Panther: Wakanda Forever',
      'genre': 'Action',
      'deskripsi': 'Queen Ramonda, Shuri, M\'Baku, Okoye and the Dora Milaje fight to protect their nation.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
      'judul': 'Avatar: The Way of Water',
      'genre': 'Action',
      'deskripsi': 'Set more than a decade after the events of the first film, learn the story of the Sully family.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
      'judul': 'Doctor Strange in the Multiverse of Madness',
      'genre': 'Action',
      'deskripsi': 'Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
      'judul': 'Minions: The Rise of Gru',
      'genre': 'Comedy',
      'deskripsi': 'A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/khohu1IKmgGNvETjEaxZaWBw4fr.jpg",
      'judul': 'Jurassic World Rebirth',
      'genre': 'Action',
      'deskripsi': 'In his second year of fighting crime, Batman uncovers corruption in Gotham City.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/74xTEgt7R36Fpooo50r9T25onhq.jpg",
      'judul': 'Jurassic World Dominion',
      'genre': 'Action',
      'deskripsi': 'Four years after Isla Nublar was destroyed, dinosaurs now live alongside humans.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/wToO8opxkGwKgSfJ1JK8tGvkG6U.jpg",
      'judul': 'Lightyear',
      'genre': 'Comedy',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/tmPgxA3oEQgLYTnsM4viazdEv8l.jpg",
      'judul': 'GJLS IBUKU IBU-IBU',
      'genre': 'Comedy',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/d8iIVE9KmkSITslMYD6WvHvbRFk.jpg",
      'judul': '1 KAKAK 7 PONAKAN',
      'genre': 'Drama',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/orf0k9sdNhXX8LdUnzPWu3COq2S.jpg",
      'judul': 'HOME SWEET LOAN',
      'genre': 'Drama',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/d9JVFB2xEBI8Y68hFx0n2pYEfsY.jpg",
      'judul': 'WARKOP DKI REBORN',
      'genre': 'Comedy',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'Coming soon'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/lUOwyPbDD9Agl3pHQVHGbZE0TvI.jpg",
      'judul': 'AGAK LAEN',
      'genre': 'Comedy',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/hqcexYHbiTBfDIdDWxrxPtVndBX.jpg",
      'judul': 'THUNDERBOLTS',
      'genre': 'Action',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg",
      'judul': 'AVENGERS ENDGAME',
      'genre': 'Action',
      'deskripsi': 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/8Wzkp1jHJda9M8q96tAfFIbQLvB.jpg",
      'judul': 'JUMBO',
      'genre': 'Comedy',
      'deskripsi': 'Jumbo adalah film animasi dengan genre fantasi petualangan Indonesia tahun 2025 yang disutradarai oleh Ryan Adriandhy dalam debut penyutradaraannya, berdasarkan naskah yang ditulisnya bersama dengan Widya Arifianti.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/vSNxAJTlD0r02V9sPYpOjqDZXUK.jpg",
      'judul': 'CAPTAIN AMERICA',
      'genre': 'Action',
      'deskripsi': 'Captain America: The First Avenger merupakan sebuah film pahlawan super Amerika Serikat yang dirilis pada tahun 2011. Ini adalah film kelima di Marvel Cinematic Universe.',
      'event': 'in theater'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final username = Provider.of<UserProvider>(context).username;
    List<Map<String, dynamic>> filteredMovies = selectedGenre == 'All'
        ? daftarMovie
        : daftarMovie.where((movie) => movie['genre'] == selectedGenre).toList();

    Widget buildSectionTitle(String title, BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          TextButton(
            onPressed: () {
              Widget destinationPage;
              if(title == 'In Theater') {
                destinationPage = Listmovie();
              } else {
                destinationPage = Comingsoon();
              } 
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => destinationPage
                ),
              );
            },
            child: const Text('More', style: TextStyle(color: Colors.black87)),
          ),
        ],
      );
    }

    Widget buildMovieList(List<Map<String, dynamic>> movies, String event) {
      final eventLower = event.toLowerCase();
      final filtered = movies.where((m) => m['event'].toString().toLowerCase() == eventLower).toList();
      return SizedBox(
        height: 264,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filtered.length,
          itemBuilder: (context, index) {
            final movie = filtered[index];
            return Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: 140,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ), 
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => tiketPesanan(gambar: movie['Gambar'], judul: movie['judul'], deskripsi: movie['deskripsi'], genre: movie['genre'],))
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            movie['Gambar'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                height: 200,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.black87,
                                    value: loadingProgress.expectedTotalBytes != null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                ),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 200,
                                color: Colors.grey[300],
                                child: Icon(
                                  Icons.error,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      movie['judul'],
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
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
      );
    }
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Banner
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black87,
                  Colors.grey[800]!,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to beng beng beng,",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                Text(
                  username,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Yuyuk, cari film favorit kamu!",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.all(14),
                      hintText: 'Search movies...',
                      hintStyle: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text("Filter by Genre:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: genres.map((genre) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ChoiceChip(
                          label: Text(genre),
                          selected: selectedGenre == genre,
                          onSelected: (selected) {
                            setState(() {
                              selectedGenre = genre;
                            });
                          },
                          selectedColor: Colors.black87,
                          backgroundColor: Colors.grey[200],
                          labelStyle: TextStyle(
                            color: selectedGenre == genre ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          elevation: selectedGenre == genre ? 4 : 1,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 22),
                buildSectionTitle("In Theater", context),
                buildMovieList(filteredMovies, 'In Theater'),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: daftarTrending.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              daftarTrending[index],
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Container(
                                  height: 160,
                                  child: Center(
                                    child: CircularProgressIndicator(color: Colors.black87),
                                  ),
                                );
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  height: 160,
                                  color: Colors.grey[300],
                                  child: Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 8),
                buildSectionTitle("Coming soon", context),
                buildMovieList(filteredMovies, 'Coming soon'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}