import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2/Provider/provider.dart';
import 'package:tugas2/pages/home-4.dart';
import 'package:tugas2/pages/regist.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordHidden = true;
  bool _isLoading = false;

  void _handleLogin() async {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username.isNotEmpty && password.isNotEmpty) {
      setState(() => _isLoading = true);

    
      await Future.delayed(const Duration(seconds: 2));

      Provider.of<UserProvider>(context, listen: false).login(username);

      setState(() => _isLoading = false);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.lock_open_rounded, size: 60, color: Colors.white),
                    const SizedBox(height: 20),
                    const Text(
                      'Login',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 40),

                    // Username input
                    SizedBox(
                      width: 320,
                      child: TextField(
                        controller: _usernameController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person, color: Colors.white70),
                          hintText: 'Username',
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Password input
                    SizedBox(
                      width: 320,
                      child: TextField(
                        controller: _passwordController,
                        obscureText: _isPasswordHidden,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock, color: Colors.white70),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordHidden ? Icons.visibility : Icons.visibility_off,
                              color: Colors.white70,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordHidden = !_isPasswordHidden;
                              });
                            },
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Register option
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do you not have an account yet?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                          },
                          child: const Text('Register', style: TextStyle(color: Colors.deepPurple)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Login button
                    ElevatedButton.icon(
                      onPressed: _isLoading ? null : _handleLogin,
                      icon: const Icon(Icons.login),
                      label: const Text('Masuk'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Loading overlay
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}