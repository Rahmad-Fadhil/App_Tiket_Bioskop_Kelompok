import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/historytiketpembelian.dart';
import 'package:tugas2/pages/homeeeee.dart';
import 'package:tugas2/pages/login.dart';
import 'package:tugas2/pages/profil.dart';
import 'package:tugas2/pages/settings.dart';
import 'package:tugas2/pages/tentang.dart';
import 'package:tugas2/pages/tiketPurchase.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int halaman = 0;

  Widget tujuan(){
    if (halaman == 0) {
      return homeeeee();
    }
    else if (halaman == 1) {
      return TiketHistory();
    }
    else if (halaman ==2 ) {
      return PurchaseHistoryPage();
    } else {
      return Profil();
    }
  }

  

  @override
  Widget build(BuildContext context) {
    final username = Provider.of<UserProvider>(context).username;

    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Text("NMFC", style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              popupMenuTheme: PopupMenuThemeData(
                color: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            child: PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, color: Colors.white), // ini warna nya nnati sesuain ya sama app bar kita
              onSelected: (value) {
                if (value == 'about') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const About()),
                  );
                } else if (value == 'settings') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Settings()),
                  );
                } else if (value == 'logout') {
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
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'about',
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.info, color: Colors.grey[600]),
                      const SizedBox(height: 4),
                      Text('About', style: GoogleFonts.poppins()),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'settings',
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.settings, color: Colors.grey[600]),
                      const SizedBox(height: 4),
                      Text('Settings', style: GoogleFonts.poppins()),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'logout',
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout, color:Colors.grey[600]),
                      const SizedBox(height: 4),
                      Text('Log Out', style: GoogleFonts.poppins()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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

            // HOME
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  halaman = 0;
                });
              },
            ),

            // PROFILE
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  halaman = 3;
                });
              },
            ),

            Divider(color: Colors.white30),

            // TICKET PURCHASE
            ListTile(
              leading: Icon(Icons.confirmation_number, color: Colors.white),
              title: Text('Ticket Purchase', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  halaman = 2;
                });
              },
            ),

            // PURCHASE HISTORY
            ListTile(
              leading: Icon(Icons.history, color: Colors.white),
              title: Text('Purchase History', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  halaman = 1;
                });
              },
            ),

            Divider(color: Colors.white30),

            SizedBox(height: 20),
          ],
        ),
      ),
      
      body: tujuan()
    );
  }
}