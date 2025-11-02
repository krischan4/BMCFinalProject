import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          // LOGOUT BUTTON: Click to sign out
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Signs out and AuthWrapper auto-navigates to LoginScreen
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF0E68C),
      body: const Center(child: Text('You are logged in!', style: TextStyle(fontWeight: FontWeight.bold))),
    );
  }
}
