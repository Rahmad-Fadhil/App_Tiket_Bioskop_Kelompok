import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool _isChanged = false;
  bool OnNotification = false;
  bool OnRecomendations = false;
  final _nameController = TextEditingController();
  final _bioController = TextEditingController();
  final _descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final user = Provider.of<UserProvider>(context, listen: false);
    _nameController.text = user.username;
    _bioController.text = user.bio;
    _descController.text = user.description;


    _nameController.addListener(() => _checkForChanges(user));
    _bioController.addListener(() => _checkForChanges(user));
    _descController.addListener(() => _checkForChanges(user));
  }

  void _checkForChanges(UserProvider user) {
    setState(() {
      _isChanged =
          _nameController.text != user.username ||
          _bioController.text != user.bio ||
          _descController.text != user.description;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

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
                    controller: _nameController,
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
                    controller: _bioController,
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
                    controller: _descController,
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

                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isChanged ? () {
                        
                        userProvider.setUsername(_nameController.text);
                        userProvider.setbio(_bioController.text);
                        userProvider.setdescription(_descController.text);

                        setState(() => _isChanged = false);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Perubahan berhasil disimpan"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                      : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isChanged ? Colors.blue : Colors.grey,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: Text(
                        "Simpan Perubahan",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      suffixIcon: const Icon(Icons.edit),
      hintText: hint,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.all(14),
    );
  }
}