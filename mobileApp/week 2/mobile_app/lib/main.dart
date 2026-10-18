// AI-assisted: Generated with ChatGPT on 17/10/2026. Modified by [YOUR NAME].

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFT 425 App',
      theme: ThemeData(
        // Changed from blue to purple
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with your name
      appBar: AppBar(
        title: const Text("INFT 425 - ANIM ENOCH"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "Hello World" text in 36pt bold purple
            const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 36, // Changed from 40 to 36
                fontWeight: FontWeight.bold,
                color: Colors.purple, // Changed from blue to purple
              ),
            ),
            const SizedBox(height: 20),
            // Flutter icon in green
            const Icon(
              Icons.code,
              color: Colors.green,
              size: 50,
            ),
            const SizedBox(height: 20),
            // Department text
            const Text(
              'Department of Computing Sciences and Engineering',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // EXTRA WIDGET (Your choice)
            const Text(
              'Welcome to my first Flutter App!',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}