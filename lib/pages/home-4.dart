import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/historytiketpembelian.dart';
import 'package:tugas2/pages/homeeeee.dart';
import 'package:tugas2/pages/login.dart';
import 'package:tugas2/pages/settings.dart';
import 'package:tugas2/pages/tentang.dart';

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
    else if (halaman == 2) {
      return Settings();
    }
    else {
      return About();
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
              },
            ),

            Divider(color: Colors.white30),

            // TICKET PURCHASE
            ListTile(
              leading: Icon(Icons.confirmation_number, color: Colors.white),
              title: Text('Ticket Purchase', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
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

            // SETTINGS
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  halaman = 2;
                });
              },
            ),

            // ABOUT
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              title: Text('About', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  halaman = 3;
                });
              },
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
      
      body: tujuan()
    );
  }
}