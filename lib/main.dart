import 'package:flutter/material.dart';

void main() {
  runApp(const TripGoApp());
}

class TripGoApp extends StatelessWidget {
  const TripGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TripGo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
      appBar: AppBar(
        title: const Text('TripGo - السياحة والسفر'),
      ),
      body: const Center(
        child: Text(
          'مرحبًا بك في TripGo!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
