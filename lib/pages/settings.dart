import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _showPasswordForm = false;
  bool _obscurePassword = true;
  bool _notificationsEnabled = false;
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
    } else if (!isAgreed) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("You must agree to save password")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password successfully changed")),
      );
      setState(() {
        _showPasswordForm = false;
        _newPasswordController.clear();
        _confirmPasswordController.clear();
        isAgreed = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.person, color: Colors.green),
              title: Text("Account", style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("Change Password"),
              trailing: IconButton(
                icon: Icon(
                  _showPasswordForm ? Icons.keyboard_arrow_up : Icons.chevron_right,
                ),
                onPressed: () {
                  setState(() {
                    _showPasswordForm = !_showPasswordForm;
                  });
                },
              ),
            ),
            if (_showPasswordForm)
              Column(
                children: [
                  const SizedBox(height: 10),
                  TextField(
                    controller: _newPasswordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: "New Password",
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility : Icons.visibility_off,
                        ),
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
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
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
                      ),
                      child: const Text(
                        "Reset Password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 30),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text("Content Settings"),
              trailing: Icon(Icons.chevron_right),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Language"),
                DropdownButton<String>(
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
              ],
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text("Privacy and security"),
              trailing: Icon(Icons.chevron_right),
            ),
            const SizedBox(height: 30),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.volume_up_sharp, color: Colors.green),
              title: Text("Notifications", style: TextStyle(fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("New for you"),
                Switch(
                  value: _notificationsEnabled,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _notificationsEnabled = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text("App Theme", style: TextStyle(fontSize: 20)),
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
