import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _showPasswordForm = false;
  bool _obscurePassword = true;
  bool _notificationsEnabled = true;
  String _selectedTheme = 'Light';
  String _selectedLanguage = 'English';
  bool isAgreed = false;

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _resetPassword() {
    final newPassword = _newPasswordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (newPassword.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill in all fields")),
      );
    } else if (newPassword != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Passwords do not match")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password successfully changed")),
      );
      setState(() {
        _showPasswordForm = false;
        _newPasswordController.clear();
        _confirmPasswordController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
            Row(
              children: const [
                Icon(Icons.person, color: Colors.green),
                SizedBox(width: 10),
                Text("Account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 20),

           
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Change Password", style: labelStyle),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _showPasswordForm = !_showPasswordForm;
                      });
                    },
                    icon: Icon(_showPasswordForm
                        ? Icons.keyboard_arrow_up
                        : Icons.chevron_right),
                  ),
                ],
              ),
            ),

            if (_showPasswordForm)
              Column(
                children: [
                  const SizedBox(height: 15),
                  TextField(
                    controller: _newPasswordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: "New Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      suffixIcon: IconButton(
                        icon: Icon(_obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Checkbox(
                        value: isAgreed,
                        onChanged: (value) {
                          setState(() {
                            isAgreed = value ?? false;
                          });
                        },
                      ),
                      const Text("Simpan password saya"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _resetPassword,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("Reset Password", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),

            const SizedBox(height: 30),

           
            Row(
              children: const [
                Icon(Icons.settings, color: Colors.green),
                SizedBox(width: 10),
                Text("Content Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 15),

            ListTile(
              title: const Text("Language"),
              trailing: DropdownButton<String>(
                value: _selectedLanguage,
                items: const [
                  DropdownMenuItem(value: 'English', child: Text('English')),
                  DropdownMenuItem(value: 'Bahasa Indonesia', child: Text('Bahasa Indonesia')),
                  DropdownMenuItem(value: 'Spanish', child: Text('Spanish')),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                },
              ),
            ),

            const Divider(height: 30, thickness: 1),

            const ListTile(
              title: Text("Privacy and security"),
              trailing: Icon(Icons.chevron_right),
            ),

            const SizedBox(height: 30),

            Row(
              children: const [
                Icon(Icons.volume_up_sharp, color: Colors.green),
                SizedBox(width: 10),
                Text("Notifications", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),

            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("New for you"),
              value: _notificationsEnabled,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),

            const SizedBox(height: 30),

         
            const Text("App Theme", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            Row(
              children: [
                Radio<String>(
                  activeColor: Colors.green,
                  value: 'Light',
                  groupValue: _selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      _selectedTheme = value!;
                    });
                  },
                ),
                const Text('Light'),
                Radio<String>(
                  activeColor: Colors.green,
                  value: 'Dark',
                  groupValue: _selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      _selectedTheme = value!;
                    });
                  },
                ),
                const Text('Dark'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
