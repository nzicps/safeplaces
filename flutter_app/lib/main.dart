import 'package:flutter/material.dart';
import 'screens/map_screen.dart';

void main() {
  runApp(const SafePlacesApp());
}

class SafePlacesApp extends StatelessWidget {
  const SafePlacesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafePlaces',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MapScreen(),
    );
  }
}
