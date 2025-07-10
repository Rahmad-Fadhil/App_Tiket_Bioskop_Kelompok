import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool OnNotification = false;
  bool OnRecomendations = false;

  @override
  Widget build(BuildContext context) {
    final username = Provider.of<UserProvider>(context).username;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(26),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey), // Warna border abu-abu saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.all(14),
                      hintText: username
                    ),
                    onChanged: (value) {
                      Provider.of<UserProvider>(context, listen: false).setUsername(value);
                    },
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Bio",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey), // Warna border abu-abu saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.all(14),
                      hintText: 'Idol'
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Deskripsi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: null,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey), // Warna border abu-abu saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.all(14),
                      hintText: 'Tulis sesuatu tentang diri Anda...'
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Birthday",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  TextField(
                    style: TextStyle(fontSize: 16),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey), // Warna border abu-abu saat fokus
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.all(14),
                      hintText: '11/05/2005'
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  ListTile(
                    title: Text(
                      "Show notifications",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                    trailing: Switch(value: OnNotification, onChanged: (i) {
                      setState(() {
                        OnNotification = i;
                      });
                    }),
                  ),
                  SizedBox(height: 12,),
                  ListTile(
                    title: Text(
                      "Show Recomendations",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                    trailing: Switch(value: OnRecomendations, onChanged: (i) {
                      setState(() {
                        OnRecomendations = i;
                      });
                    })
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}