import 'package:feedo/pages/home.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Feedo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const HomePage(title: 'Inicio'));
  }
}

void main() {
  runApp(const MainApp());
}
