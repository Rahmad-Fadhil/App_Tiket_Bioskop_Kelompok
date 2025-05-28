import 'package:flutter/material.dart';
// import 'package:kelompok_app_tiket_bioskop/Provider/provider.dart';
// import 'package:kelompok_app_tiket_bioskop/pages/historytiketpembelian.dart';
// import 'package:kelompok_app_tiket_bioskop/pages/tentang.dart';
// import 'package:flutter_application_1/providerr/provider.dart';
// import 'package:flutter_application_1/pages/commingsoon.dart';
// import 'package:flutter_application_1/pages/login.dart';
// import 'package:flutter_application_1/pages/listMovie.dart';
// import 'package:flutter_application_1/pages/profil.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/historytiketpembelian.dart';
import 'package:tugas2/pages/tentang.dart';

import 'commingsoon.dart';
import 'listMovie.dart';
import 'login.dart';
import 'profil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedGenre = 'All';
  List<String> genres = ['All', 'Action', 'Drama', 'Comedy', 'Romantic'];

  List<String> daftarTrending = [
    "https://image.tmdb.org/t/p/w780/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg",
    "https://image.tmdb.org/t/p/w780/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
    "https://image.tmdb.org/t/p/w780/p1F51Lvj3sMopG948F5HsBbl43C.jpg",
    "https://image.tmdb.org/t/p/w780/AaV1YIdWjnjqzFXHqNOPdkBMEfx.jpg",
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
      'Gambar': "https://image.tmdb.org/t/p/w500/kqjL17yufvn9OVLyXYpvtyrFfak.jpg",
      'judul': 'Thor: Love and Thunder',
      'genre': 'Action',
      'deskripsi': 'After his retirement is interrupted by Gorr the God Butcher, Thor enlists the help of King Valkyrie.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
      'judul': 'Minions: The Rise of Gru',
      'genre': 'Comedy',
      'deskripsi': 'A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil.',
      'event': 'in theater'
    },
    {
      'Gambar': "https://image.tmdb.org/t/p/w500/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg",
      'judul': 'The Batman',
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
  ];

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.black87,
        action: SnackBarAction(
          label: 'Close',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          movie['Gambar'],
                          fit: BoxFit.cover,
                          width: double.infinity,
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
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Text("Welcome, $username", style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // HEADER DRAWER
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
                image: DecorationImage(
                  image: NetworkImage("https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.3,
                ),
              ),
              accountName: Text(
                "Kelompok Tiket Bioskop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              accountEmail: Text(username),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.black87),
              ),
            ),

            // HOME DENGAN SUBMENU
            ExpansionTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: [
                ListTile(
                  leading: Icon(Icons.movie, color: Colors.white70),
                  title: Text('Now Playing', style: TextStyle(color: Colors.white70)),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.schedule, color: Colors.white70),
                  title: Text('Coming Soon', style: TextStyle(color: Colors.white70)),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.trending_up, color: Colors.white70),
                  title: Text('Trending', style: TextStyle(color: Colors.white70)),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),

            // PROFILE
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Profil()
                ));
              }   
            ),

            Divider(color: Colors.white30),

            // TICKET PURCHASE
            ListTile(
              leading: Icon(Icons.confirmation_number, color: Colors.white),
              title: Text('Ticket Purchase', style: TextStyle(color: Colors.white)),
              trailing: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('NEW', style: TextStyle(color: Colors.white, fontSize: 10)),
              ),
              onTap: () => Navigator.pop(context),
            ),

            // PURCHASE HISTORY
            ListTile(
              leading: Icon(Icons.history, color: Colors.white),
              title: Text('Purchase History', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TiketHistory()
                ));
              } 
            ),

            // MANAGE CONTENT
            ExpansionTile(
              leading: Icon(Icons.edit, color: Colors.white),
              title: Text('Manage Content', style: TextStyle(color: Colors.white)),
              iconColor: Colors.white,
              collapsedIconColor: Colors.white,
              children: [
                ListTile(
                  leading: Icon(Icons.add_circle, color: Colors.white70),
                  title: Text('Add Movie', style: TextStyle(color: Colors.white70)),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: Icon(Icons.edit_note, color: Colors.white70),
                  title: Text('Edit Movie', style: TextStyle(color: Colors.white70)),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),

            Divider(color: Colors.white30),

            // SETTINGS
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () => Navigator.pop(context),
            ),

            // ABOUT
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              title: Text('About', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => About()
                ));
              } 
            ),

            // LOGIN/REGISTER
            ListTile(
              leading: Icon(Icons.login, color: Colors.white),
              title: Text('Login/Register', style: TextStyle(color: Colors.white)),
              onTap: () => Navigator.pop(context),
            ),

            SizedBox(height: 20),

            // LOGOUT BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Logout Confirmation"),
                        content: Text("Are you sure you want to logout?"),
                        actions: [
                          TextButton(
                            child: Text("Cancel"),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.red,
                            ),
                            child: Text("Logout"),
                            onPressed: () {
                              Provider.of<UserProvider>(context, listen: false).logout();
                              Navigator.of(context).pop();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const Login()),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.logout),
                label: Text("Logout"),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
      
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
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
                            _showSnackBar(context, "Genre filtered to: $genre");
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon(Icons.info_outline, color: Colors.white),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Row(
                  children: [
                    Icon(Icons.movie, color: Colors.black87),
                    SizedBox(width: 8),
                    Text("CinemaApp Info"),
                  ],
                ),
                content: Text("This is the home page of CinemaApp. Browse through our collection of movies, filter by genre, and check out what's trending!"),
                actions: [
                  TextButton(
                    child: Text("OK", style: TextStyle(color: Colors.black87)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}