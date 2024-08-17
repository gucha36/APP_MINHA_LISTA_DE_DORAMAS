import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(const MeusDoramasApp());
}

class MeusDoramasApp extends StatelessWidget {
  const MeusDoramasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Doramas Favoritos',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SplashScreen(),
    );
  }
}
