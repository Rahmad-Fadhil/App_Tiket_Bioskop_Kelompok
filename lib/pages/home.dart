import 'package:flutter/material.dart';
import 'package:kelompok_app_tiket_bioskop/Provider/provider.dart';
import 'package:kelompok_app_tiket_bioskop/pages/commingsoon.dart';
import 'package:kelompok_app_tiket_bioskop/pages/login.dart';
import 'package:kelompok_app_tiket_bioskop/pages/listMovie.dart';
import 'package:kelompok_app_tiket_bioskop/pages/profil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedGenre = 'All';

  List<String> genres = ['All', 'Action', 'Drama', 'Comedy', 'Romantic'];

  List<String> daftarTrending = ["assets/1 movie info.jpg", "assets/2 movie info.jpg", "assets/3 movie info.jpg", "assets/4 movie info.jpg", "assets/5 movie info.jpg"];
  List<Map<String, dynamic>> daftarMovie = [
    {
      'Gambar':"assets/1 (1).jpg",
      'judul': 'Fast & Furious 9',
      'genre': 'Action',
      'deskripsi': 'Vin Diesel Dom Toretto is leading a quiet life off the grid with Letty and his son, little Brian, but they know that danger always lurks just over their peaceful horizon. This time, that threat will force Dom to confront the sins of his past if he going to save those he loves most.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (2).jpg",
      'judul': 'Fast & Furious X',
      'genre': 'Action',
      'deskripsi': 'Fast X (juga dikenal sebagai Fast & Furious 10) adalah sebuah film aksi Amerika tahun 2023 yang diarahkan oleh Louis Leterrier dari skenario yang ditulis Dan Mazeau, Justin Lin, dan Zach Dean. Sekuel dari F9 (2021), seri kesepuluh dari Fast & Furious. Dibintangi Vin Diesel sebagai Dominic Toretto bersama Michelle Rodriguez, Tyrese Gibson, Chris "Ludacris" Bridges, John Cena, Nathalie Emmanuel, Jordana Brewster, Sung Kang, Scott Eastwood, Daniela Melchior, Alan Ritchson, Helen Mirren, Brie Larson, Rita Moreno, Jason Statham, Jason Momoa, dan Charlize Theron. Menceritakan tentang Dom yang harus melindungi keluarganya dari Dante Reyes yang berupaya membalas dendam atas kematian ayahnya dan hilangnya kekayaan keluarganya.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (3).jpg",
      'judul': "Doraemon: Nobita's Sky Utopia",
      'genre': 'Comedy',
      'deskripsi': "Doraemon: Nobita's Sky Utopia bercerita tentang Nobita dan teman-temannya yang bertualang untuk menemukan Utopia, sebuah dunia fantasi yang sempurna. Setelah mendengar cerita Dekisugi tentang Utopia, Nobita mendesak Doraemon untuk membantunya mencari Utopia, dan mereka akhirnya melakukan perjalanan melalui waktu menggunakan kapal penjelajah waktu. Dalam perjalanan, mereka bertemu dengan Tiga Orang Bijak yang menciptakan Paradapia, sebuah dunia yang dipikirkan sempurna, dan juga karakter baru seperti Sonya, Marimba, dan Hana.",
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/1 (4).jpg",
      'judul': 'Doraemon: Nobita dan Pahlawan Luar Angkasa',
      'genre': 'Comedy',
      'deskripsi': 'Doraemon: Nobita dan Pahlawan Luar Angkasa adalah film pahlawan super anime Jepang dan film Doraemon ke-35. Rilis di Jepang pada 7 Maret 2015. Nobita mendambakan "kalau ia pun bisa menjadi pahlawan" ketika melihat program pahlawan yang populer di kalangan anak-anak "Pelindung Galaksi Miracle Hero (Pahlawan Ajaib)". Sementara itu, Suneo dan Gian yang menonton film yang sama mengundang Shizuka untuk mulai syuting film pahlawan. Lalu Nobita yang menyaksikan pun "ingin diajak" dan sayangnya ia diberi peran monster yang merupakan musuh pahlawan, Gian pun memukulnya hingga terpental.Nobita yang pulang ke rumah menceritakan kejadiannya, Doraemon yang mengaku sebagai penggemar acara itu juga kembali lagi ke Gian dan teman-temannya bersama Nobita, sutradara Robot Burger yang melakukan pengambilan adegan film skala penuh berusaha menggunakan kekuatan ajaibnya dengan kekuatan dari "grade up light"("Cahaya naik kelas") pakaian kostum dan kemampuannya memproduksi film.Setelah syuting, di sana seseorang yang misterius muncul bernama Aron meminta kepada mereka "Aku ingin kalian menyelamatkan kampung halamanku Planet Pokkuru", mereka pun ikut naik ke pesawat ruang angkasa yang dinaiki Aron menuju bintang Pokkuru. Kelimanya menduga bahwa itu adalah "syuting skala penuh", namun apa yang menunggu mereka adalah pertempuran nyata dengan Bajak Laut Luar Angkasa yang berencana untuk menyerang Planet Pokkuru.Doraemon dan teman-teman yang menjadi "Pelindung Galaksi" bekerja bersama untuk melindungi bintang Pokkuru dari serangan Bajak Laut Luar Angkasa.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (5).jpg",
      'judul': 'Avengers: Endgame',
      'genre': 'Action',
      'deskripsi': ' Film yang diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures ini adalah sekuel langsung Avengers: Infinity War (2018) dan merupakan film ke-22 Marvel Cinematic Universe (MCU). Film ini disutradarai oleh Anthony dan Joe Russo dan ditulis oleh Christopher Markus dan Stephen McFeely, dan menampilkan pemeran ensambel di antaranya Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, dan Josh Brolin. Pada film ini, anggota Avengers yang masih hidup dan para sekutunya berusaha untuk membalikkan kerusakan yang disebabkan oleh Thanos dalam Infinity War.Film ini diumumkan pada Oktober 2014 sebagai Avengers: Infinity War Part 2.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (6).jpg",
      'judul': 'Fast & Furious 7',
      'genre': 'Action',
      'deskripsi': "After defeating Owen Shaw and his crew and securing amnesty for their past crimes, Dominic 'Dom' Toretto (Vin Diesel), Brian O'Conner (Paul Walker), and the rest of their team have returned to the United States to live normal lives again. Brian begins to accustom himself to life as a father, while Dom tries to help Letty Ortiz (Michelle Rodriguez) regain her memories.Meanwhile, Owen's older brother, Deckard Shaw (Jason Statham), breaks into the secure hospital the comatose Owen is being held in and swears vengeance against Dom. As Deckard leaves the hospital, it is shown to be absolutely destroyed, indicating Deckard was responsible for the mayhem and the extremes he would pursue, to avenge his brother. Deckard breaks into Luke Hobbs (Dwayne Johnson)' DSS office to extract profiles of Dom's crew. After revealing his identity, Shaw engages Hobbs in a fight, and escapes when he detonates a bomb that severely injures Hobbs, as he tries to save Elena (Elsa Pataky) from being hit by the blast.Dom later learns from his sister Mia (Jordana Brewster) that she is pregnant again and convinces her to tell Brian. However, a bomb, disguised in a package sent from Tokyo, explodes and destroys the Toretto house just seconds after Han (Sung Kang), a member of their team, is killed by Shaw in Tokyo. Shaw calls Dom from Han's mobile (giving Dom the indication that Han is dead), and the package from Tokyo is not from Han and is from an enemy. Dom manages to save Mia, as Brian saves his son Jack. The bomb is powerful enough that it shreds Mia's house.",
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (7).jpg",
      'judul': 'Fast & Furious',
      'genre': 'Action',
      'deskripsi': "THE FAST AND THE FURIOUS mengisahkan tentang dunia balap jalanan ilegal di Los Angeles yang dipimpin oleh Dominic Toretto, seorang pembalap ulung yang juga pemimpin dari sebuah kelompok balap jalanan. Cerita dimulai ketika Brian O'Conner, seorang polisi muda yang menyamar sebagai pembalap jalanan, menyelidiki serangkaian perampokan yang dilakukan dengan mobil cepat.Brian yang mengikuti komunitas balap jalanan masuk ke dalam dunia Dominic dan teman-temannya, termasuk Mia Toretto, adik perempuan Dominic yang menarik perhatiannya. Selama penyelidikan, Brian semakin terlibat dengan kelompok Dominic, bahkan menjalin hubungan khusus dengan Mia. Namun, Brian juga menemukan dirinya terjebak dalam dilema moral karena konflik batin dalam dirinya.Di mana ia bingung antara tugas polisinya dan rasa hormatnya terhadap Dominic serta persaudaraannya dengan Mia. Saat Brian berusaha mendapatkan kepercayaan Dominic, persaingan antara mereka meningkat ketika kebenaran tentang identitas Brian terungkap. Ketegangan mencapai puncaknya ketika Brian dan Dominic terlibat dalam balapan terakhir yang mempertaruhkan segalanya.",
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (8).jpg",
      'judul': 'Moana 2',
      'genre': 'Comedy',
      'deskripsi': "Setelah tiga tahun Moana berhasil melewati batas karang dan mengembalikan jantung dewi Te Fiti, ia dan keluarganya hidup damai dan sejahtera. Moana bahkan memiliki adik perempuan bernama Simea yang sangat menggemaskan.Suatu hari, Moana bermimpi didatangi oleh leluhurnya, Tautai Vasa. Sang leluhur meminta Moana untuk menyatukan kembali seluruh penduduk di pulau Oceania.Namun, Moana mesti menemukan dan memulihkan sebuah pulau yang telah lama hilang, yaitu Pulau Motufetu. Pulau ini lah yang dulunya berperan penting dalam menyatukan masyarakat di seluruh Samudra. Sayangnya pulau ini hilang akibat dikutuk oleh dewa Nalo.Akhirnya, Moana pun memutuskan untuk menjalankan misi berbahaya tersebut. Atas saran ibunya, kali ini Moana tidak melakukannya sendirian. Moana membentuk tim kapal yang terdiri dari Loto, Kele, dan Moni untuk membantu pencarian Motufetu.Loto adalah seorang pembuat kapal dan penunjuk jalan yang andal. Kele merupakan seorang petani yang bertugas dalam menyediakan makanan selama perjalanan. Sementara Moni, seorang penggemar cerita rakyat yang mengidolakan Maui.Berbekal petunjuk yang diberikan Tautai Vasa untuk mengikuti 'api di langit'. Moana dan tim pun berlayar melintasi Samudra Oceania.Di tengah perjalanan, mereka menghadapi banyak rintangan. Mulai dari menguji kekompakan tim, bertemu perompak berbentuk kelapa, hingga menyelamatkan Maui dari tawanan Dwi Matangi.Ketika mendekati lokasi Pulau Motufetu, Moana dan tim kembali dihadapkan dengan ancaman bahaya, yaitu bagai ungu yang dahsyat. Pusaran air laut akibat badai ungu itu membuat Moana dan tim kewalahan.",
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (9).jpg",
      'judul': 'Doraemon Great Adventure in the Antarctic kachi kochi',
      'genre': 'Comedy',
      'deskripsi': 'Karena tidak tahan dengan panasnya musim panas, Doraemon membawa Nobita dan teman-temannya ke gunung es besar yang mengapung di Pasifik Selatan. Saat membuat taman hiburan dengan alat rahasia "Besi Pengerjaan Es", kelompok itu menemukan cincin emas misterius di dalam es. Setelah pemeriksaan lebih dekat, mereka menentukan bahwa cincin itu terkubur di Antartika 100.000 tahun yang lalu - sebelum orang-orang dapat tinggal di sana. Doraemon dan teman-temannya menuju Antartika untuk mencari pemilik cincin itu dan menemukan reruntuhan kota besar yang terkubur di dalam es. Dengan menggunakan Sabuk Waktu Doraemon, kelompok itu melakukan perjalanan kembali 100.000 tahun yang lalu dan bertemu dengan gadis muda Kara yang terhubung dengan cincin misterius itu. Namun sekarang kelompok itu harus',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/1 (10).jpg",
      'judul': "Doraemon: Nobita's Earth Symphony",
      'genre': 'Comedy',
      'deskripsi': 'Nobita dan Doraemon yang berpetualang untuk menyelamatkan musik di dunia. Mereka bertemu dengan seorang gadis bernama Mikka yang mengajak mereka ke planetnya, tempat musik menjadi sumber energi. Di sana, mereka menghadapi ancaman makhluk jahat yang ingin menghapus musik dari semua planet, termasuk Bumi',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/THUNDERBOLTS_ (2025).jpg",
      'judul': "THUNDERBOLTS",
      'genre': 'Action',
      'deskripsi': 'Thunderbolts adalah film superhero yang mengusung konsep unik. Sekelompok penjahat ikonik Marvel akan bergabung dan dipaksa bekerja sama dalam operasi rahasia atas nama pemerintah AS.Bucky Barnes alias Winter Soldier dari film Captain America dan serial The Falcon and the Winter Soldier akan menjadi pemimpin untuk kelompok ini. Yelena Belova, adik dari Natasha Romanoff alias Black Widow juga ikut bergabung. Tak ketinggalan juga Red Guardian dan Taskmaster.',
      'event': 'Coming soon'
    },
    {
      'Gambar':"assets/deadpool 3 movie poster.jpg",
      'judul': "Deadpool 3",
      'genre': 'Action',
      'deskripsi': 'Film “Deadpool & Wolverine” memiliki setting setelah peristiwa yang terjadi di akhir film “Deadpool 2.” Wade Wilson, alias Deadpool, tidak ingin lagi mengingat masa lalunya yang penuh kekerasan. Sayangnya, konflik besar terjadi setelah TVA (Time Variance Authority) menemui dirinya. Wade Wilson mendapatkan tawaran menjadi superhero di antara superhero. Diculik dan mendapatkan tugas dari TVA, Deadpool akan mengubah sejarah MCU.Misi ini mengharuskan Deadpool memperbaiki linimasa yang rusak, dan dalam pekerjaannya, ia dibantu oleh Wolverine. Namun, keduanya bukanlah superhero yang mudah disatukan perangainya. Wolverine dan Deadpool memiliki gaya dan cara berbeda dalam mengatasi masalah, yang justru menimbulkan banyak konflik. Deadpool, dengan karakter ceria dan konyol, sering kali bentrok dengan Wolverine yang keras dan mudah marah.Meski demikian, saat situasi semakin rumit, Deadpool dan Wolverine mampu bekerja sama untuk menghancurkan lawan berat yang mengancam mereka. Film ini menghadirkan komedi yang menarik dengan bumbu aksi yang tak kalah seru, menggambarkan sekacau apa nantinya Deadpool mengubah sejarah MCU.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/Poster Film Indonesia Jumbo.jpg",
      'judul': "Jumbo",
      'genre': 'Comedy',
      'deskripsi': 'Film Jumbo mengisahkan seorang anak yatim piatu berusia 10 tahun bernama Don. Ia sering diremehkan karena memiliki tubuh yang besar. Don mempunyai sebuah buku dongeng warisan orang tuanya, yang penuh ilustrasi dan cerita ajaib. Buku tersebut bukan hanya kenang-kenangan, tetapi juga menjadi sumber inspirasi dan pelarian bagi Don dari dunia yang terasa tidak ramah karena kerap diremehkan oleh teman-temannya.Don berupaya membuktikan kemampuannya dengan mengikuti sebuah pertunjukan bakat, yang mana ia berencana menampilkan sandiwara panggung yang terinspirasi dari buku cerita peninggalan orang tuanya, namun, seorang temannya mencuri buku tersebut, membuatnya putus asa. Beruntungnya, Don selalu mendapat dukungan dari Oma dan sahabat-sahabatnya, Nurman dan Mae. Di tengah keputusasaan, Don bertemu dengan Meri (seorang peri kecil misterius) yang meminta bantuannya untuk menemukan orang tuanya. Ia pun berupaya untuk mendapatkan kembali buku warisannya itu. Pertemuan ini mengawali petualangan penuh keajaiban pun dimulai, mengubah pandangan Don terhadap dirinya sendiri mengajarkan arti persahabatan sejati, keberanian, dan kepercayaan diri dan mempererat tali persahabatan yang baru terbentuk.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/The Architecture of Love (TAOL).jpg",
      'judul': "The Architecture of Love",
      'genre': 'Romantic',
      'deskripsi': 'Seorang penulis populer bernama Raia mengalami kebuntuan menulis setelah bercerai dengan suaminya, Alam. Raia pun memutuskan untuk mencari inspirasi di Kota New York, Amerika Serikat.Meski sudah di New York, Raia tak kunjung memulai karya barunya hingga ia dipertemukan dengan River, seorang arsitek yang misterius. Pertemuan pertama mereka menciptakan pertemuan-pertemuan selanjutnya.Mereka memutuskan untuk mengitari kota big apple itu bersama. Raia mencari inspirasi untuk karyanya, sedang River mencari inspirasi untuk sketsanya. Kegiatan itu menjadi bagian dari kehidupan sehari-hari mereka sampai mengundang tanda tanya akan pilihan masing-masing.',
      'event': 'in theater'
    },
    {
      'Gambar':"assets/Wicked In Cinemas 26 November 2024.jpg",
      'judul': "Wicked",
      'genre': 'Drama',
      'deskripsi': 'menceritakan kisah persahabatan dua penyihir muda di Negeri Oz, Elphaba (yang kemudian dikenal sebagai Penyihir Jahat dari Barat) dan Glinda (yang menjadi Penyihir Baik dari Utara). Keduanya bertemu di Shiz University dan awalnya tidak akur, namun persahabatan mereka berkembang seiring waktu. Konflik muncul ketika mereka terlibat dengan Penyihir Oz, yang memiliki niat tersembunyi, dan menyebabkan Elphaba dan Glinda memilih jalan yang berbeda. ',
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
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
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
            child: const Text('More'),
          ),
        ],
      );
    }

    Widget buildMovieList(List<Map<String, dynamic>> movies, String event) {
      final eventLower = event.toLowerCase();
      final filtered = movies.where((m) => m['event'].toString().toLowerCase() == eventLower).toList();
      return SizedBox(
        height: 264,
        child: ListView.builder( // untuk scroll secara horizontal
          scrollDirection: Axis.horizontal,
          itemCount: filtered.length,
          itemBuilder: (context, index) {
            final movie = filtered[index];
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
                              image: AssetImage(movie['Gambar']),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      movie['judul'],
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
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Text("Welcome, $username", style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [PopupMenuButton(itemBuilder: (context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
              },
              child: Row(
                children: [
                  Icon(Icons.account_circle , color: Colors.black,),
                  SizedBox(width: 8,),
                  Text('Profil'),
                ],
              )
            ),
            PopupMenuItem(
              onTap: () {
                Provider.of<UserProvider>(context, listen: false).logout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.black,),
                  SizedBox(width: 8,),
                  Text('Logout'),
                ],
              )
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

                const SizedBox(height: 16),

                const Text("Filter by Genre:", style: TextStyle(fontWeight: FontWeight.bold)),
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
                          labelStyle: TextStyle(
                            color: selectedGenre == genre ? Colors.white : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                SizedBox(
                  height: 22,
                ),
                buildSectionTitle("In Theater", context),
                buildMovieList(filteredMovies, 'In Theater'),
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
                buildSectionTitle("Coming soon", context),
                buildMovieList(filteredMovies, 'Coming soon'),
              ],
            ),
          ),
        ],
      ) 
    );
  }
}