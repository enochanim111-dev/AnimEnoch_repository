// AI-assisted: Generated with GitHub Copilot on 2026-10-13. Modified by GitHub Copilot.
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp configures the Material 3 theme and launches the home screen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFT 425',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HelloWorldPage(),
    );
  }
}

// HelloWorldPage displays the assignment content without needing mutable state.
class HelloWorldPage extends StatelessWidget {
  const HelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the standard page structure for the screen.
      appBar: AppBar(
        // AppBar shows the course and author at the top of the screen.
        title: const Text('INFT 425 - Anim Enoch'),
      ),
      // Center places the vertical content group in the available screen area.
      body: Center(
        // Column stacks each piece of assignment content vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text greets the viewer in a customized teal, 42-point bold style.
            const Text(
              'Hello World',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox adds breathing room between the greeting and code icon.
            const SizedBox(height: 20),
            // Icon represents code using the requested green 50-pixel icon.
            const Icon(Icons.code, color: Colors.green, size: 50),
            // SizedBox separates the icon from the department description.
            const SizedBox(height: 20),
            // Padding keeps the department text away from narrow screen edges.
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              // Text centers the department name and uses the requested style.
              child: Text(
                'Department of Computing Sciences and Engineering',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
            // SizedBox gives the additional line a little separation.
            const SizedBox(height: 16),
            // Text is an extra assignment-themed line added to the layout.
            const Text(
              'Learning Flutter, one widget at a time',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}