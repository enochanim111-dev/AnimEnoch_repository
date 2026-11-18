// =============================================================================
// Provided — you should not need to change this file.
// =============================================================================
import 'package:flutter/material.dart';
import 'screens/event_list_screen.dart';
import 'theme/app_theme.dart';

void main() => runApp(const MidsemApp());

class MidsemApp extends StatelessWidget {
  const MidsemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Events',
      theme: AppTheme.light(),
      debugShowCheckedModeBanner: false,
      home: const EventListScreen(),
    );
  }
}